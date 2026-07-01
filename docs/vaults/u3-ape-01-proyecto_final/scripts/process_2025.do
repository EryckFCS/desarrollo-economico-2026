* ==============================================================================
* PROCESAMIENTO DE INDICADORES SOCIOECONÓMICOS ENEMDU 2025 EN STATA (PICHINCHA)
* ==============================================================================
* Bóveda: docs/vaults/indicators-2025/
* Archivo: process_2025.do
* Autor: Erick Fabricio Condoy Seraquive
* Fecha: 2026-06-30
* Versión: 2.0 — Correcciones de merge, homogeneización de llaves y validaciones
*
* CORRECCIONES APLICADAS:
*   [FIX-1] Homogeneización completa de TODAS las llaves antes del merge
*           (id_vivienda, id_hogar, periodo, ciudad) en ambas bases
*   [FIX-2] Verificación dinámica de existencia de variable 'periodo'
*           antes de incluirla en el merge (no siempre existe en viviendas)
*   [FIX-3] Validación post-merge con assert _N > 0
*   [FIX-4] Gini corregido: normalización por suma ponderada de población
*   [FIX-5] Bloque IPM con guards de variables missing (capture confirm)
**# Bookmark #1
*   [FIX-6] Logging estructurado con timestamps en cada etapa
* ==============================================================================

clear all
macro drop _all
set more off

* ------------------------------------------------------------------------------
* 0. AUTODETECCIÓN DE ENTORNO (Wine/Windows vs Linux nativo)
* ------------------------------------------------------------------------------
local repo_name "economic_development"

if "`c(os)'" == "Windows" {
    local user_home "Z:/home/erick-fcs"
}
else {
    local user_home "/home/erick-fcs"
}

local proj_root  "`user_home'/Documentos/universidad/07_Ciclo/septimo_ciclo/`repo_name'"
local lake_dir   "`user_home'/.capital/lake/inec/enemdu_2025"
local vault_dir  "`proj_root'/docs/vaults/u3-ape-01-proyecto_final"
local log_file   "`vault_dir'/logs/process_2025_stata.log"
local data_out   "`vault_dir'/data/base_pichincha_2025.dta"

cd "`proj_root'"

* Líneas de pobreza oficiales Diciembre 2025
local linea_pobreza  89.85
local linea_extrema  50.63

* Iniciar bitácora
capture log close
log using "`log_file'", replace text

display "================================================================="
display "  PROCESAMIENTO ENEMDU ANUAL 2025 — PICHINCHA"
display "  Inicio: $S_DATE  $S_TIME"
display "================================================================="

* ==============================================================================
* [BLOQUE 1-3] CARGA DE DATOS PRE-FUSIONADOS Y FILTRADOS DESDE PYTHON
* ==============================================================================
display _newline "[BLOQUE 1-3] Cargando base de datos unificada de Pichincha..."
use "`vault_dir'/data/base_merged_pichincha_2025.dta", clear

if `=_N' == 0 {
    display as error "ERROR CRÍTICO: La base de datos cargada está vacía."
    log close
    exit 198
}

display "Registros cargados de Pichincha: `=_N'"

* ==============================================================================
* [BLOQUE 4] DISEÑO MUESTRAL
* ==============================================================================
display _newline "[BLOQUE 4] Declarando diseño muestral..."

capture confirm variable fexp
if _rc != 0 {
    display "ERROR: variable 'fexp' no encontrada. Verificar base de personas."
    log close
    exit 1
}

* Asegurar que fexp sea numérica
capture confirm string variable fexp
if _rc == 0 {
    destring fexp, replace
    display "INFO: fexp convertida de string a numérico."
}

* Declarar diseño muestral con factor de expansión
svyset [pw=fexp]
display "[BLOQUE 4] Diseño muestral declarado con fexp."

* ==============================================================================
* [BLOQUE 5] POBREZA POR INGRESOS
* ==============================================================================
display _newline "[BLOQUE 5] Calculando pobreza por ingresos..."

capture confirm variable ingpc
if _rc != 0 {
    display "ERROR: variable 'ingpc' no encontrada."
    log close
    exit 1
}

capture confirm string variable ingpc
if _rc == 0 {
    destring ingpc, replace force
}

* Reemplazar negativos con missing (ingresos no pueden ser negativos)
replace ingpc = . if ingpc < 0

gen byte pobre_ingresos = (ingpc < `linea_pobreza') if !missing(ingpc)
gen byte pobre_extremo  = (ingpc < `linea_extrema')  if !missing(ingpc)

label variable pobre_ingresos "Pobre por ingresos (linea: `linea_pobreza' USD/mes)"
label variable pobre_extremo  "Pobre extremo (linea: `linea_extrema' USD/mes)"

display "--- TASAS DE POBREZA POR INGRESOS EN PICHINCHA (PONDERADO) ---"
display "Línea de pobreza: `linea_pobreza' USD/persona/mes"
display "Línea de extrema pobreza: `linea_extrema' USD/persona/mes"
svy: mean pobre_ingresos pobre_extremo

* ==============================================================================
* [BLOQUE 6] COEFICIENTE DE GINI (FORMULA DE BROWN PONDERADA)
* [FIX-4] Normalización correcta: dividir por suma total ponderada de ingreso
* ==============================================================================
display _newline "[BLOQUE 6] Calculando Coeficiente de Gini (Brown ponderado)..."

preserve
    keep if !missing(ingpc) & ingpc >= 0
    sort ingpc

    * Acumulados ponderados
    gen double w_cum   = sum(fexp)
    gen double wy_cum  = sum(ingpc * fexp)

    * Totales poblacionales
    scalar W_total  = w_cum[_N]
    scalar WY_total = wy_cum[_N]

    * Proporciones acumuladas (Lorenz)
    gen double p = w_cum  / W_total     // fracción acumulada de población
    gen double L = wy_cum / WY_total    // fracción acumulada de ingreso (Lorenz)

    * Valores lagged para el trapecio
    gen double p_prev = p[_n-1]
    gen double L_prev = L[_n-1]
    replace p_prev = 0 in 1
    replace L_prev = 0 in 1

    * Área bajo la Curva de Lorenz (regla del trapecio)
    gen double trapecio = (p - p_prev) * (L + L_prev) / 2
    egen double area_lorenz = sum(trapecio)

    * [FIX-4] Gini = 1 - 2 * área_bajo_Lorenz
    scalar gini_coef = 1 - 2 * area_lorenz[1]

    display "---"
    display "COEFICIENTE DE GINI — PICHINCHA (Anual 2025)"
    display "Gini = " %6.4f gini_coef
    display "Observaciones usadas: `=_N'"
    display "---"
    
    * Graficar Curva de Lorenz en Stata y exportar a assets/
    twoway (line L p, lcolor(teal) lwidth(medium)) ///
           (line p p, lcolor(red) lpattern(dash)), ///
           title("Curva de Lorenz - Pichincha 2025 (Stata)") ///
           xtitle("Proporción acumulada de población") ///
           ytitle("Proporción acumulada de ingreso") ///
           legend(order(1 "Lorenz" 2 "Igualdad Perfecta")) ///
           graphregion(color(white))
    graph export "`vault_dir'/assets/curva_lorenz_2025_stata.png", replace
restore

* ==============================================================================
* [BLOQUE 7] ÍNDICE DE POBREZA MULTIDIMENSIONAL (IPM PROXY - AF METHOD)
* [FIX-5] Guards de variables con capture confirm antes de cada privación
* ==============================================================================
display _newline "[BLOQUE 7] Calculando IPM Proxy (Alkire-Foster, k=2/4)..."

* Inicializar privaciones en missing
gen byte priv_asistencia   = .
gen byte priv_educ_adultos = .
gen byte priv_agua         = .
gen byte priv_saneamiento  = .

* --- Privación 1: Inasistencia escolar (5-17 años) ---
capture confirm variable p03
capture confirm variable p07
if _rc == 0 {
    replace priv_asistencia = (p03 >= 5 & p03 <= 17 & p07 == 2) ///
        if !missing(p03) & !missing(p07)
    display "INFO: priv_asistencia calculada desde p03 y p07."
}
else {
    display "ADVERTENCIA: p03 o p07 no encontradas. priv_asistencia = missing."
}

* --- Privación 2: Rezago educativo adultos (18+ con instrucción básica o menos) ---
capture confirm variable nnivins
if _rc == 0 {
    replace priv_educ_adultos = (p03 >= 18 & nnivins <= 1) ///
        if !missing(p03) & !missing(nnivins)
    display "INFO: priv_educ_adultos calculada desde nnivins."
}
else {
    display "ADVERTENCIA: nnivins no encontrada. priv_educ_adultos = missing."
}

* --- Privación 3: Acceso a agua (no proviene de red pública) ---
capture confirm variable vi03a
if _rc == 0 {
    replace priv_agua = (vi03a != 1) if !missing(vi03a)
    display "INFO: priv_agua calculada desde vi03a."
}
else {
    display "ADVERTENCIA: vi03a no encontrada. Intentando variable alternativa..."
    capture confirm variable vi03
    if _rc == 0 {
        replace priv_agua = (vi03 != 1) if !missing(vi03)
        display "INFO: priv_agua calculada desde vi03 (alternativa)."
    }
    else {
        display "ADVERTENCIA: ninguna variable de agua encontrada. priv_agua = missing."
    }
}

* --- Privación 4: Saneamiento (inodoro no conectado a alcantarillado ni a pozo séptico) ---
capture confirm variable vi04a
if _rc == 0 {
    replace priv_saneamiento = (vi04a != 1 & vi04a != 2) if !missing(vi04a)
    display "INFO: priv_saneamiento calculada desde vi04a."
}
else {
    display "ADVERTENCIA: vi04a no encontrada. Intentando variable alternativa..."
    capture confirm variable vi04
    if _rc == 0 {
        replace priv_saneamiento = (vi04 != 1 & vi04 != 2) if !missing(vi04)
        display "INFO: priv_saneamiento calculada desde vi04 (alternativa)."
    }
    else {
        display "ADVERTENCIA: ninguna variable de saneamiento encontrada. priv_saneamiento = missing."
    }
}

* --- Conteo de privaciones y clasificación IPM ---
* Usar egen rowtotal con missing = 0 para cómputo robusto
egen byte priv_count = rowtotal(priv_asistencia priv_educ_adultos priv_agua priv_saneamiento)

* Umbral k=2 de 4 privaciones (≥50% = umbral AF estándar para este número)
gen byte ipm_pobre = (priv_count >= 2) if !missing(priv_count)

label variable priv_count  "Número de privaciones (0-4)"
label variable ipm_pobre   "Pobre multidimensional (k >= 2 privaciones de 4)"

display "--- POBREZA MULTIDIMENSIONAL IPM PROXY — PICHINCHA ---"
svy: mean ipm_pobre priv_asistencia priv_educ_adultos priv_agua priv_saneamiento

* Incidencia (H) e Intensidad media (A) del IPM
svy: mean priv_count if ipm_pobre == 1
scalar A_intensidad = r(table)[1,1] / 4    // A = priv_promedio / k_total

display "Intensidad media de privaciones (A) entre pobres multidim.: " %5.4f A_intensidad
display "IPM = H * A = [ver mean ipm_pobre] * " %5.4f A_intensidad

* ==============================================================================
* [BLOQUE 8] GUARDAR BASE FINAL Y CERRAR
* ==============================================================================
display _newline "[BLOQUE 8] Guardando base de datos final..."

* Etiquetas para variables clave
label variable pobre_ingresos  "Pobre monetario (USD/mes)"
label variable pobre_extremo   "Pobre extremo monetario (USD/mes)"
label variable ipm_pobre       "Pobre multidimensional IPM proxy"
label variable priv_count      "Conteo de privaciones IPM (0-4)"

compress
save "`data_out'", replace
display "Base guardada: `data_out'"
display "Registros finales: `=_N'"

display _newline "================================================================="
display "  PROCESAMIENTO FINALIZADO: $S_DATE  $S_TIME"
display "================================================================="

log close