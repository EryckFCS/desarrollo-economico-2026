* ==============================================================================
* PROCESAMIENTO DE INDICADORES SOCIOECONÓMICOS ENEMDU 2025 EN PICHINCHA
* ==============================================================================
* Bóveda: docs/vaults/u3-ape-01-proyecto_final/
* Archivo: process_2025.do
* Autor: Erick Fabricio Condoy Seraquive
* Versión: 4.0 — Corrección metodológica completa (auditoría vs. v3.0)
*
* CAMBIOS RESPECTO A v3.0:
*   [3] svyset: documentada ausencia de UPM/estrato; se conserva diseño SRS ponderado.
*   [4] Bootstrap real 500 reps (seed=42) para Gini y Theil L con IC 95%.
*   [5] IPM reconstruido desde indicadores reales Alkire-Foster 4D (k=2/4).
*   [6] IDH-Proxy desde variables reales por individuo (vi09/vi10, p10a/p10b, ln(ingpc)).
*       IDH-D desde fórmula Atkinson/PNUD ε=1 sobre distribución real por dimensión.
*   [+] Aserciones defensivas de dominio en cada índice generado.
*   [+] Pre-diagnóstico de ingpc ante percentiles P95/P97.5 sospechosos.
*   [+] Log de auditoría comparativo process_2025_audit.log al final.
*
* SECCIONES:
*   [0] Autodetección y directorios
*   [1] Carga y fusión de datos (viviendas y personas)
*   [2] Filtrado Pichincha y depuración canónica
*   [3] Declaración de diseño muestral (svyset) con diagnóstico
*   [4] OBJETIVO 1: Desigualdad (Gini, Theil L, Deciles, Bootstrap)
*   [5] OBJETIVO 2: Pobreza Monetaria e IPM real (Alkire-Foster proxy)
*   [6] OBJETIVO 3: IDH Proxy e IDH-D desde variables reales
*   [7] Análisis de Sensibilidad (Winsorización)
*   [8] Exportación de base depurada
*   [9] Log de auditoría metodológica (v3.0 vs. v4.0)
* ==============================================================================

clear all
macro drop _all
set more off
set seed 42

* ------------------------------------------------------------------------------
* 0. CONFIGURACIÓN DE ENTORNO
* ------------------------------------------------------------------------------
local repo_name "economic_development"

if "`c(os)'" == "Windows" {
    local user_home "Z:/home/erick-fcs"
}
else {
    local user_home "/home/erick-fcs"
}

local proj_root  "`user_home'/Documentos/universidad/07_Ciclo/septimo_ciclo/`repo_name'"
local vault_dir  "`proj_root'/docs/vaults/u3-ape-01-proyecto_final"
local log_file   "`vault_dir'/logs/process_2025_stata.log"
local audit_log  "`vault_dir'/logs/process_2025_audit.log"
local data_out   "`vault_dir'/data/base_pichincha_2025.dta"

cd "`proj_root'"

* Líneas oficiales de pobreza (Anuales 2025)
local linea_pobreza  89.85
local linea_extrema  50.63

capture log close
log using "`log_file'", replace text

display "================================================================="
display "  INICIO PROCESAMIENTO ENEMDU 2025 - PICHINCHA  [v4.0]"
display "  $S_DATE  $S_TIME"
display "================================================================="

* ------------------------------------------------------------------------------
* 1. CARGA, HOMOGENEIZACIÓN Y FUSIÓN DE DATOS (PERSONAS Y VIVIENDAS)
* ------------------------------------------------------------------------------
display _newline "[ETAPA 1] Preparando base de viviendas..."
use "`vault_dir'/data/vivienda_2025_anual.dta", clear

foreach var in id_vivienda id_hogar periodo ciudad {
    capture confirm variable `var'
    if _rc == 0 {
        capture confirm string variable `var'
        if _rc == 0 {
            replace `var' = trim(`var')
        }
        else {
            tostring `var', replace
            replace `var' = trim(`var')
        }
    }
}
tempfile viviendas_temp
save "`viviendas_temp'", replace

display _newline "[ETAPA 2] Preparando base de personas..."
use "`vault_dir'/data/personas_2025_anual.dta", clear

foreach var in id_vivienda id_hogar periodo ciudad {
    capture confirm variable `var'
    if _rc == 0 {
        capture confirm string variable `var'
        if _rc == 0 {
            replace `var' = trim(`var')
        }
        else {
            tostring `var', replace
            replace `var' = trim(`var')
        }
    }
}

display _newline "[ETAPA 3] Realizando merge personas m:1 viviendas..."
capture confirm variable periodo
if _rc == 0 {
    merge m:1 id_vivienda id_hogar periodo using "`viviendas_temp'", ///
        keep(match) keepusing(vi09 vi10) nogenerate
}
else {
    merge m:1 id_vivienda id_hogar using "`viviendas_temp'", ///
        keep(match) keepusing(vi09 vi10) nogenerate
}

* ------------------------------------------------------------------------------
* 2. FILTRADO PARA PICHINCHA Y DEPURACIÓN CANÓNICA
* ------------------------------------------------------------------------------
display _newline "[ETAPA 4] Filtrando para Pichincha y depurando ingresos..."
destring ciudad, gen(ciudad_num) force
gen int provincia = int(ciudad_num / 10000)
keep if provincia == 17
drop ciudad_num provincia

* Filtro canónico: ingpc no missing e ingpc > 0
* Nota: 265 missing excluidos para coherencia muestral.
drop if missing(ingpc)
drop if ingpc <= 0

display "Observaciones canónicas válidas en Pichincha: `=_N'"

* ------------------------------------------------------------------------------
* 3. DECLARACIÓN DEL DISEÑO MUESTRAL (svyset)
* ------------------------------------------------------------------------------
* [CORRECCIÓN v4.0 vs. v3.0]:
*   v3.0: svyset [pw=fexp] → PSUs=46,463 (cada obs.=su propio PSU), Strata=<one>
*         Equivale a un diseño SRS ponderado que sub-estima la varianza real.
*
* DIAGNÓSTICO EJECUTADO:
*   Variables candidatas de diseño ENEMDU inspeccionadas: upm, conglomerado,
*   estrato, panelm. NINGUNA aparece en la base disponible (confirmado en el
*   compress output del log v3.0, líneas 510-637 de process_2025_stata.log).
*
* CONCLUSIÓN: No existen variables de PSU/estrato en la base fusionada.
*   Se conserva svyset [pw=fexp] con documentación explícita de la limitación.
*   NO se simula un diseño falso. El DEFF real de ENEMDU urbano es ~1.5–2.5;
*   los errores estándar reportados están sub-estimados. Reportar en nota
*   metodológica como limitación de disponibilidad de microdatos.
* ------------------------------------------------------------------------------
display _newline "[ETAPA 5] Declarando diseño muestral (ver limitación documentada)..."
destring fexp, replace force

* Verificar presencia de variables de diseño muestral
local design_found = 0
foreach dvar in upm conglomerado estrato panelm {
    capture confirm variable `dvar'
    if _rc == 0 {
        local design_found = 1
        display "  >> Variable de diseño encontrada: `dvar' — actualizando svyset"
    }
}

if `design_found' == 0 {
    display "  ADVERTENCIA: UPM/estrato/conglomerado NO encontrados en la base."
    display "  LIMITACIÓN: svyset declarado solo con [pw=fexp] (SRS ponderado)."
    display "  Los SE están sub-estimados. Reportar DEFF ~1.5-2.5 en nota metodológica."
    svyset [pw=fexp]
}
else {
    capture confirm variable upm
    if _rc == 0 {
        capture confirm variable estrato
        if _rc == 0 {
            svyset upm [pw=fexp], strata(estrato)
            display "  >> Diseño bietápico declarado: PSU=upm, strata=estrato."
        }
        else {
            svyset upm [pw=fexp]
            display "  >> Diseño con PSU=upm declarado (sin estrato)."
        }
    }
    else {
        svyset conglomerado [pw=fexp]
        display "  >> Diseño con PSU=conglomerado declarado."
    }
}

* ------------------------------------------------------------------------------
* 4. OBJETIVO 1: DESIGUALDAD Y CONCENTRACIÓN DEL INGRESO
* ------------------------------------------------------------------------------
display _newline "================================================================="
display "  OBJETIVO 1: DESIGUALDAD Y CONCENTRACIÓN (GINI, THEIL L, DECILES, BOOTSTRAP)"
display "================================================================="

* A. Cálculo puntual del Gini y Theil L
preserve
    sort ingpc
    gen double w_cum  = sum(fexp)
    gen double wy_cum = sum(ingpc * fexp)
    scalar W_total  = w_cum[_N]
    scalar WY_total = wy_cum[_N]

    gen double p      = w_cum  / W_total
    gen double L      = wy_cum / WY_total
    gen double p_prev = p[_n-1]
    gen double L_prev = L[_n-1]
    replace p_prev = 0 in 1
    replace L_prev = 0 in 1

    gen double trapecio   = (p - p_prev) * (L + L_prev) / 2
    egen double area_lorenz = sum(trapecio)
    scalar gini_coef = 1 - 2 * area_lorenz[1]

    gen double y_rel       = (WY_total / W_total) / ingpc
    gen double theil_contrib = fexp * ln(y_rel)
    egen double sum_theil  = sum(theil_contrib)
    scalar theil_coef = sum_theil[1] / W_total

    display "Gini Estimado  = " %6.4f gini_coef
    display "Theil Estimado = " %6.4f theil_coef

    twoway (line L p, lcolor(navy) lwidth(medium)) ///
           (line p p, lcolor(cranberry) lpattern(dash)), ///
           title("Curva de Lorenz - Pichincha 2025", color(navy)) ///
           xtitle("Proporción acumulada de población") ///
           ytitle("Proporción acumulada de ingreso") ///
           legend(order(1 "Curva de Lorenz observada" 2 "Igualdad Perfecta")) ///
           graphregion(fcolor(white) lcolor(white)) plotregion(fcolor(white))
    graph export "`vault_dir'/assets/curva_lorenz_2025_stata.png", replace
restore

* B. Estimación de Deciles por Agrupación Directa Ponderada
preserve
    sort ingpc
    gen double w_cum  = sum(fexp)
    scalar W_total    = w_cum[_N]
    gen double p_cum  = w_cum / W_total

    gen int decil = 1 + int(p_cum * 10)
    replace decil = 10 if decil > 10

    collapse (mean) ing_prom=ingpc (sum) ing_tot=ingpc [pw=fexp], by(decil)
    egen double ing_total_sum = sum(ing_tot)
    gen double part_pct = (ing_tot / ing_total_sum) * 100

    display _newline "--- TABLA DE DECILES CALCULADOS EN STATA ---"
    list decil ing_prom part_pct, clean
restore

* C. Bootstrap (500 reps) para IC 95% de Gini y Theil L
* [CORRECCIÓN v4.0 vs. v3.0]:
*   v3.0: prometía "bootstrap descriptivo IID" en el encabezado pero no ejecutaba
*         ningún comando bootstrap. Se implementa aquí con 500 replicaciones.
*   NOTA: bootstrap IID (sin estratificación), coherente con la limitación del
*         diseño muestral documentada en [3].
* ------------------------------------------------------------------------------
display _newline "--- BOOTSTRAP (500 reps, seed=42) PARA GINI Y THEIL L ---"
display "    [LIMITACIÓN: bootstrap IID — refleja variación muestral, no diseño bietápico]"

capture program drop _gini_theil_boot
program define _gini_theil_boot, rclass
    sort ingpc
    gen double w_cum_b  = sum(fexp)
    gen double wy_cum_b = sum(ingpc * fexp)
    scalar W_b  = w_cum_b[_N]
    scalar WY_b = wy_cum_b[_N]

    gen double p_b  = w_cum_b / W_b
    gen double L_b  = wy_cum_b / WY_b
    gen double pp_b = p_b[_n-1]
    gen double Lp_b = L_b[_n-1]
    replace pp_b = 0 in 1
    replace Lp_b = 0 in 1

    gen double trap_b  = (p_b - pp_b) * (L_b + Lp_b) / 2
    egen double area_b = sum(trap_b)
    return scalar gini_coef = 1 - 2 * area_b[1]

    gen double yr_b = (WY_b / W_b) / ingpc
    gen double tc_b = fexp * ln(yr_b)
    egen double st_b = sum(tc_b)
    return scalar theil_coef = st_b[1] / W_b
end

bootstrap gini_coef=r(gini_coef) theil_coef=r(theil_coef), ///
    reps(500) seed(42) nodots: _gini_theil_boot

matrix B_boot = e(b)
matrix V_boot = e(V)
scalar gini_bs_mean  = B_boot[1,1]
scalar theil_bs_mean = B_boot[1,2]
scalar gini_bs_se    = sqrt(V_boot[1,1])
scalar theil_bs_se   = sqrt(V_boot[2,2])

display _newline "--- RESULTADOS BOOTSTRAP ---"
display "Gini  IC 95%: [" %6.4f (gini_bs_mean - 1.96*gini_bs_se) ///
        ", " %6.4f (gini_bs_mean + 1.96*gini_bs_se) "]"
display "Theil IC 95%: [" %6.4f (theil_bs_mean - 1.96*theil_bs_se) ///
        ", " %6.4f (theil_bs_mean + 1.96*theil_bs_se) "]"

capture program drop _gini_theil_boot

* ------------------------------------------------------------------------------
* PRE-DIAGNÓSTICO DE ingpc (antes de la Sección 7 — Winsorización)
* [CORRECCIÓN v4.0]: P95=950 y P97.5=1260 del log v3.0 son enteros exactos.
*   Esto es sospechoso: en una distribución continua de ingresos la probabilidad
*   de que percentiles caigan en enteros exactos es ~0. Posibles causas:
*   (a) INEC aplicó topes/bandas de ingreso en el diseño de la encuesta,
*   (b) imputación por rangos discretos, (c) winsorización previa en la fuente.
*   CONSECUENCIA: winsorizar sobre una distribución ya censurada comprime
*   aún más la cola superior y puede sesgar el Gini a la baja artificialmente.
*   Reportar en nota metodológica como limitación de la fuente de datos.
* ------------------------------------------------------------------------------
display _newline "--- PRE-DIAGNÓSTICO: DISTRIBUCIÓN EXTREMA DE ingpc ---"
_pctile ingpc [pw=fexp], percentiles(90 95 97.5 99 99.5)
display "  P90   = " %8.2f r(r1)
display "  P95   = " %8.2f r(r2) "  [SOSPECHOSO si es entero exacto]"
display "  P97.5 = " %8.2f r(r3) "  [SOSPECHOSO si es entero exacto]"
display "  P99   = " %8.2f r(r4)
display "  P99.5 = " %8.2f r(r5)

display _newline "  Frecuencia de valores exactos en los percentiles sospechosos:"
count if ingpc == 950
display "    ingpc == 950  : " r(N) " observaciones (>1 sugiere categorización)"
count if ingpc == 1260
display "    ingpc == 1260 : " r(N) " observaciones (>1 sugiere categorización)"
display "  LIMITACIÓN: Si frecuencias > 1 → ingpc truncada en la fuente INEC."
display "              La winsorización en Sec.7 opera sobre dist. ya censurada."

* ------------------------------------------------------------------------------
* 5. OBJETIVO 2: POBREZA MONETARIA Y POBREZA MULTIDIMENSIONAL OFICIAL (IPM)
* ------------------------------------------------------------------------------
display _newline "================================================================="
display "  OBJETIVO 2: POBREZA MONETARIA Y MULTIDIMENSIONAL (IPM)"
display "================================================================="

* A. Pobreza Monetaria
gen byte pobre_ingresos = (ingpc < `linea_pobreza')
gen byte pobre_extremo  = (ingpc < `linea_extrema')

display "--- POBREZA MONETARIA PONDERADA (PICHINCHA 2025) ---"
svy: mean pobre_ingresos pobre_extremo

* B. IPM-Proxy-4D (Alkire-Foster)
* [CORRECCIÓN v4.0 vs. v3.0]:
*   v3.0: ipm_pobre = (runiform() <= 0.0726) — simulación pura, sin datos reales.
*   v4.0: construye 4 indicadores reales disponibles en la base fusionada y
*          aplica el método Alkire-Foster con umbral k=2/4 (al menos 2 privaciones).
*
*   DIMENSIÓN 1 — EDUCACIÓN:
*     d_educ_rezago = 1 si persona de 6-18 años no asiste a institución educativa.
*     Fuente: p06 (asistencia; 1=Sí, 2=No) + p04 (edad en años cumplidos).
*
*   DIMENSIÓN 2 — SALUD:
*     d_salud_afiliac = 1 si no tiene afiliación a ningún seguro de salud.
*     Fuente: vi09 (afiliación IESS; 1=Sí, 2=No) + vi10 (seguro privado; 1=Sí, 2=No).
*
*   DIMENSIÓN 3 — EMPLEO:
*     d_trabajo_desocup = 1 si está desocupado (PEA, 15+ años).
*     Fuente: desempleo (1=desocupado) o condact (fallback; 2=desocupado).
*
*   DIMENSIÓN 4 — INGRESOS:
*     d_ingreso_pobre = 1 si ingpc < línea de pobreza oficial.
*     Fuente: pobre_ingresos (ya calculado).
*
*   LIMITACIÓN DE COBERTURA: IPM oficial INEC usa 12 indicadores. Con 4 dims.
*   disponibles el índice NO es comparable con el IPM-INEC oficial. Se reporta
*   como "IPM-Proxy-4D" en todos los outputs. No ocultar como IPM oficial.
* ------------------------------------------------------------------------------
display _newline "--- CONSTRUCCIÓN IPM-PROXY-4D (Alkire-Foster, k=2/4) ---"
display "    [LIMITACIÓN: 4 de 12 indicadores disponibles — no comparar con IPM-INEC]"

* -- D1: Privación educativa --
capture confirm variable p06
capture confirm variable p04
if _rc == 0 {
    gen byte d_educ_rezago = 0
    replace  d_educ_rezago = 1 if (p04 >= 6 & p04 <= 18) & (p06 == 2)
    replace  d_educ_rezago = . if missing(p06) & (p04 >= 6 & p04 <= 18)
    display "  [OK] d_educ_rezago: p06 (asistencia) + p04 (edad)"
}
else {
    gen byte d_educ_rezago = .
    display "  [WARN] p06/p04 no disponibles — d_educ_rezago = missing"
}

* -- D2: Privación de salud --
capture confirm variable vi09
capture confirm variable vi10
if _rc == 0 {
    gen byte d_salud_afiliac = 0
    replace  d_salud_afiliac = 1 if (vi09 == 2) & (vi10 == 2)
    replace  d_salud_afiliac = . if missing(vi09) | missing(vi10)
    display "  [OK] d_salud_afiliac: vi09 + vi10 (no afiliado a ningún seguro)"
}
else {
    gen byte d_salud_afiliac = .
    display "  [WARN] vi09/vi10 no disponibles — d_salud_afiliac = missing"
}

* -- D3: Privación laboral --
capture confirm variable desempleo
capture confirm variable p03
if _rc == 0 {
    gen byte d_trabajo_desocup = 0
    replace  d_trabajo_desocup = 1 if (p03 >= 15) & (desempleo == 1)
    replace  d_trabajo_desocup = . if missing(desempleo) & (p03 >= 15)
    display "  [OK] d_trabajo_desocup: desempleo + p03 (edad)"
}
else {
    capture confirm variable condact
    if _rc == 0 {
        gen byte d_trabajo_desocup = 0
        replace  d_trabajo_desocup = 1 if condact == 2
        replace  d_trabajo_desocup = . if missing(condact)
        display "  [OK] d_trabajo_desocup: condact (fallback; 2=desocupado)"
    }
    else {
        gen byte d_trabajo_desocup = .
        display "  [WARN] ni desempleo ni condact disponibles — d_trabajo_desocup = missing"
    }
}

* -- D4: Privación monetaria --
gen byte d_ingreso_pobre = pobre_ingresos
display "  [OK] d_ingreso_pobre: pobre_ingresos (ingpc < `linea_pobreza')"

* -- Conteo de privaciones y umbral k=2/4 --
* [imputation] NaN en indicadores etarios (p.ej. d_educ_rezago para adultos)
* tratado como 0: el indicador no aplica al grupo etario → no es privación.
* Convención INEC-IPM 2022, sección 3.2: missing por no-aplicabilidad = 0.
gen byte privaciones_count = 0
foreach dim in d_educ_rezago d_salud_afiliac d_trabajo_desocup d_ingreso_pobre {
    capture confirm variable `dim'
    if _rc == 0 {
        replace privaciones_count = privaciones_count + cond(missing(`dim'), 0, `dim')
    }
}

* Umbral Alkire-Foster k=2/4: pobre multidimensional si tiene ≥ 2 privaciones
gen byte ipm_pobre = (privaciones_count >= 2)

display _newline "--- DISTRIBUCIÓN DE PRIVACIONES (ponderada) ---"
tabulate privaciones_count [fw=round(fexp)], missing

display _newline "--- IPM-PROXY-4D (PICHINCHA 2025) ---"
svy: mean ipm_pobre

* Aserción defensiva: ipm_pobre debe ser binario
assert inlist(ipm_pobre, 0, 1)

* ------------------------------------------------------------------------------
* 6. OBJETIVO 3: IDH PROXY E IDH-D (PENALIZACIÓN POR DESIGUALDAD)
* ------------------------------------------------------------------------------
display _newline "================================================================="
display "  OBJETIVO 3: IDH PROXY E IDH AJUSTADO POR DESIGUALDAD"
display "================================================================="
*
* [CORRECCIÓN v4.0 vs. v3.0]:
*   v3.0 — index_salud: 1 - (r_draw > 0.88) → simulación con runiform()
*        — index_educ : 0.7266 escalar constante → varianza real = 0
*        — index_ing  : 0.5587 escalar constante → varianza real = 0
*        — display "0.7096" y "0.5450" → strings hardcodeados, no calculados
*        — IDH-D: idh_proxy * (1 - 0.2319) → factor fijo, no Atkinson real
*
*   v4.0 — index_salud: vi09==1 | vi10==1 (afiliación real; vi09/vi10 fusionadas)
*        — index_educ : anios_escol(p10a,p10b) / 18  [fórmula PNUD min-max 0-18]
*        — index_ing  : (ln(ingpc*12) - ln(100)) / (ln(75000) - ln(100))
*                       [límites logarítmicos PNUD; ingpc anualizado]
*        — idh_proxy  : media geométrica de las tres dims. a nivel individuo
*        — display    : derivado de svy:mean (e(b)), no hardcodeado
*        — IDH-D      : fórmula Atkinson/PNUD ε=1 (media geométrica individual
*                       por dimensión) sobre distribución real
* ------------------------------------------------------------------------------

* -- COMPONENTE SALUD: desde vi09/vi10 (real) --
capture confirm variable vi09
capture confirm variable vi10
if _rc == 0 {
    gen byte index_salud = 0
    replace  index_salud = 1 if (vi09 == 1) | (vi10 == 1)
    replace  index_salud = . if missing(vi09) & missing(vi10)
    display "  [OK] index_salud: vi09/vi10 reales (1=afiliado a cualquier seguro)"
}
else {
    gen byte index_salud = .
    display "  [WARN] vi09/vi10 no disponibles — index_salud = missing"
}

assert index_salud == 0 | index_salud == 1 if !missing(index_salud)

* -- COMPONENTE EDUCACIÓN: años de escolaridad desde p10a/p10b (real) --
* p10a: nivel instrucción (1=Ninguno, 2=Alfa, 3=Primaria/EGB, 4=Secundaria/Bach,
*        5=Sup.no-univ, 6=Sup.univ, 7=Posgrado, 9=NS/NR)
* p10b: años aprobados en el nivel actual
* Tabla de equivalencia de años base por nivel (convención INEC):
*   Ninguno/Alfa → 0   |  Primaria/EGB → 0+p10b (hasta 6)
*   Secundaria   → 6+p10b (hasta 6) |  Sup.no-univ → 12+p10b
*   Sup.univ     → 12+p10b          |  Posgrado     → 16+p10b
capture confirm variable p10a
if _rc == 0 {
    gen double anios_escol = .
    replace anios_escol = 0                 if p10a == 1   // Ninguno
    replace anios_escol = 0                 if p10a == 2   // Centro alfabetización
    replace anios_escol = 0                 if p10a == 3   // Primaria/EGB (base)
    replace anios_escol = 6                 if p10a == 4   // Secundaria/Bach. (base)
    replace anios_escol = 12               if p10a == 5   // Sup. no universitario
    replace anios_escol = 12               if p10a == 6   // Sup. universitario (base)
    replace anios_escol = 16               if p10a == 7   // Posgrado (base)

    capture confirm variable p10b
    if _rc == 0 {
        * Añadir años aprobados en el nivel actual (solo donde aplica)
        replace anios_escol = anios_escol + p10b ///
            if !missing(p10b) & p10b >= 0 & inlist(p10a, 3, 4, 5, 6, 7)
    }

    * Truncar al dominio PNUD: [0, 18]
    replace anios_escol = min(anios_escol, 18)
    replace anios_escol = max(anios_escol, 0)

    gen double index_educ = anios_escol / 18
    replace    index_educ = . if missing(p10a) | p10a == 9   // NS/NR → missing
    display "  [OK] index_educ: anios_escol(p10a+p10b)/18  [PNUD min-max 0-18]"
}
else {
    gen double index_educ = .
    display "  [WARN] p10a no disponible — index_educ = missing"
}

assert index_educ >= 0 & index_educ <= 1 if !missing(index_educ)

* -- COMPONENTE INGRESOS: indexación logarítmica de ingpc (real) --
* Fórmula PNUD IDH: (ln(ingpc_anual) - ln(100)) / (ln(75,000) - ln(100))
* ingpc: ingreso per cápita mensual en USD corrientes → anualizar × 12.
* Límites PNUD (INB per cápita PPA 2011): min=100, max=75,000 USD/año.
* NOTA METODOLÓGICA: límites en USD corrientes Ecuador 2025 ≈ PPA USD por la
* dolarización; diferencia de deflactor se documenta como limitación menor.
local ln_min = ln(100)
local ln_max = ln(75000)
gen double ingpc_anual = ingpc * 12
gen double index_ing   = (ln(ingpc_anual) - `ln_min') / (`ln_max' - `ln_min')
replace    index_ing   = 0 if index_ing < 0
replace    index_ing   = 1 if index_ing > 1
drop ingpc_anual
display "  [OK] index_ing: (ln(ingpc*12)-ln(100))/(ln(75000)-ln(100))"

assert index_ing >= 0 & index_ing <= 1 if !missing(index_ing)

* -- IDH PROXY: media geométrica a nivel individuo --
gen double idh_proxy = (index_salud * index_educ * index_ing)^(1/3)
replace    idh_proxy = . if missing(index_salud) | missing(index_educ) | missing(index_ing)

assert idh_proxy >= 0 & idh_proxy <= 1 if !missing(idh_proxy)

display _newline "--- IDH PROXY (media geométrica de dims. reales por individuo) ---"
* [CORRECCIÓN]: svy:mean real — el número proviene de e(b), no de un string fijo
svy: mean idh_proxy
matrix M_idh = e(b)
scalar idh_proxy_mean = M_idh[1,1]
display "IDH Proxy (media ponderada): " %6.4f idh_proxy_mean

* -- IDH-D: Atkinson/PNUD ε=1 por dimensión (real) --
* Para ε=1: pérdida Atkinson = 1 - media_geométrica / media_aritmética
* media_geométrica ponderada = exp(Σ w_i * ln(x_i) / Σ w_i)
* Para x_i=0 se aplica piso ε=0.001 (convención PNUD HDR 2010, Technical Note 2)
* IDH-D_dim = (1 - A_dim) * μ_arith_dim
* IDH-D = (IDH-D_salud × IDH-D_educ × IDH-D_ing)^(1/3)

* SALUD
sum index_salud [aw=fexp] if !missing(index_salud)
scalar mu_salud_arith = r(mean)
gen double _log_s = ln(max(index_salud, 0.001)) if !missing(index_salud)
sum _log_s [aw=fexp]
scalar mu_salud_geom = exp(r(mean))
scalar A_salud    = 1 - mu_salud_geom / mu_salud_arith
scalar idh_d_sal  = (1 - A_salud) * mu_salud_arith
drop _log_s

* EDUCACIÓN
sum index_educ [aw=fexp] if !missing(index_educ)
scalar mu_educ_arith = r(mean)
gen double _log_e = ln(max(index_educ, 0.001)) if !missing(index_educ)
sum _log_e [aw=fexp]
scalar mu_educ_geom = exp(r(mean))
scalar A_educ    = 1 - mu_educ_geom / mu_educ_arith
scalar idh_d_edu = (1 - A_educ) * mu_educ_arith
drop _log_e

* INGRESOS
sum index_ing [aw=fexp] if !missing(index_ing)
scalar mu_ing_arith = r(mean)
gen double _log_i = ln(max(index_ing, 0.001)) if !missing(index_ing)
sum _log_i [aw=fexp]
scalar mu_ing_geom = exp(r(mean))
scalar A_ing     = 1 - mu_ing_geom / mu_ing_arith
scalar idh_d_ing = (1 - A_ing) * mu_ing_arith
drop _log_i

* IDH-D escalar (media geométrica de los tres índices ajustados por dim.)
scalar idhd_scalar = (idh_d_sal * idh_d_edu * idh_d_ing)^(1/3)

* Variable idhd_proxy a nivel individuo: escala idh_proxy por el ratio IDH-D/IDH
gen double idhd_proxy = idh_proxy * (idhd_scalar / idh_proxy_mean)
replace    idhd_proxy = . if missing(idh_proxy)

assert idhd_proxy >= 0 & idhd_proxy <= 1 if !missing(idhd_proxy)

display _newline "--- IDH-D PROXY (Atkinson ε=1 sobre distribución real) ---"
* [CORRECCIÓN]: svy:mean real — los números no están hardcodeados
svy: mean idhd_proxy
matrix M_idhd = e(b)
scalar idhd_proxy_mean = M_idhd[1,1]

display "IDH-D (media ponderada)         : " %6.4f idhd_proxy_mean
display "Pérdida total por desigualdad(%): " %6.2f (1 - idhd_proxy_mean/idh_proxy_mean)*100

display _newline "--- PÉRDIDAS ATKINSON POR DIMENSIÓN ---"
display "  A_salud = " %6.4f A_salud  "  (IDH-D salud = " %6.4f idh_d_sal ")"
display "  A_educ  = " %6.4f A_educ   "  (IDH-D educ  = " %6.4f idh_d_edu ")"
display "  A_ing   = " %6.4f A_ing    "  (IDH-D ing   = " %6.4f idh_d_ing ")"

* ------------------------------------------------------------------------------
* 7. ANÁLISIS DE SENSIBILIDAD (WINSORIZACIÓN)
* ------------------------------------------------------------------------------
display _newline "================================================================="
display "  ANÁLISIS DE SENSIBILIDAD: WINSORIZACIÓN DE INGRESOS"
display "================================================================="
*
* ADVERTENCIA: ver pre-diagnóstico en Sección 4 — P95/P97.5 pueden ser enteros
* exactos si INEC aplicó topes. La winsorización opera sobre dist. ya censurada.
* Resultados de Gini winsorizado deben interpretarse como robustez secundaria.
* ------------------------------------------------------------------------------

preserve
    _pctile ingpc [pw=fexp], percentiles(95 97.5 99)
    scalar p95   = r(r1)
    scalar p97_5 = r(r2)
    scalar p99   = r(r3)

    display "Percentil 95:   " %8.2f p95
    display "Percentil 97.5: " %8.2f p97_5
    display "Percentil 99:   " %8.2f p99

    gen double ingpc_w99 = ingpc
    replace ingpc_w99 = p99 if ingpc_w99 > p99

    sort ingpc_w99
    gen double wc_w99     = sum(fexp)
    gen double wyc_w99    = sum(ingpc_w99 * fexp)
    scalar W_w99          = wc_w99[_N]
    scalar WY_w99         = wyc_w99[_N]
    gen double p_w99      = wc_w99  / W_w99
    gen double L_w99      = wyc_w99 / WY_w99
    gen double p_prev_w99 = p_w99[_n-1]
    gen double L_prev_w99 = L_w99[_n-1]
    replace p_prev_w99 = 0 in 1
    replace L_prev_w99 = 0 in 1
    gen double trap_w99   = (p_w99 - p_prev_w99) * (L_w99 + L_prev_w99) / 2
    egen double area_w99  = sum(trap_w99)
    scalar gini_w99       = 1 - 2 * area_w99[1]

    display "Gini Winsorizado (P99)        : " %6.4f gini_w99
    display "Reducción vs. Gini base       : " %6.4f (gini_coef - gini_w99)
restore

* ------------------------------------------------------------------------------
* 8. EXPORTACIÓN DE BASE DE DATOS FINAL
* ------------------------------------------------------------------------------
display _newline "[ETAPA 8] Exportando base final de Stata..."
compress
save "`data_out'", replace
display "✓ Base exportada correctamente a: `data_out'"

log close

* ==============================================================================
* 9. LOG DE AUDITORÍA METODOLÓGICA: v3.0 (SIMULADO) vs. v4.0 (REAL)
* ==============================================================================
capture log close
log using "`audit_log'", replace text

display "================================================================="
display "  AUDITORÍA METODOLÓGICA: process_2025.do  v3.0 → v4.0"
display "  Generado: $S_DATE $S_TIME"
display "================================================================="
display ""
display "TABLA COMPARATIVA — INDICADORES SIMULADOS (v3.0) vs. REALES (v4.0)"
display "------------------------------------------------------------------------"
display "INDICADOR                       | v3.0 (SIMULADO)       | v4.0 (REAL)"
display "------------------------------------------------------------------------"

display "DISEÑO MUESTRAL"
display "  svyset                        | [pw=fexp] solo        | igual (UPM ausente)"
display "  PSUs                          | 46,463 (cada obs.)    | 46,463 (sin cambio)"
display "  SE                            | sub-estimados         | sub-estimados (documentado)"
display ""
display "GINI / THEIL"
display "  Gini puntual                  | 0.4532 (real)         | " %8.4f gini_coef " (real)"
display "  Gini bootstrap mean           | no calculado          | " %8.4f gini_bs_mean
display "  Gini SE bootstrap             | ---                   | " %8.4f gini_bs_se
display "  Theil puntual                 | 0.3636 (real)         | " %8.4f theil_coef " (real)"
display "  Theil bootstrap mean          | no calculado          | " %8.4f theil_bs_mean
display "  Theil SE bootstrap            | ---                   | " %8.4f theil_bs_se
display ""
display "IPM"
display "  ipm_pobre método              | runiform()<=0.0726    | Alkire-Foster 4D k=2/4"
display "  Dims. usadas                  | 0 (simulación)        | 4 (educ/salud/empleo/ing)"
display "  Comparabilidad IPM-INEC       | ---                   | NO (proxy 4/12 dims.)"
display ""
display "IDH PROXY"
display "  index_salud método            | 1-(r_draw>0.88) rand. | vi09==1|vi10==1 (real)"
display "  index_educ valor              | 0.7266 constante      | p10a+p10b/18 (individual)"
display "  index_ing valor               | 0.5587 constante      | ln(ingpc*12) normalizado"
display "  IDH Proxy display             | hardcoded '0.7096'    | " %8.4f idh_proxy_mean " (svy:mean)"
display "  IDH-D display                 | hardcoded '0.5450'    | " %8.4f idhd_proxy_mean " (svy:mean)"
display "  IDH-D método                  | idh*(1-0.2319) fijo   | Atkinson ε=1 por dim."
display "  Pérdida Atkinson salud        | ---                   | " %8.4f A_salud
display "  Pérdida Atkinson educación    | ---                   | " %8.4f A_educ
display "  Pérdida Atkinson ingresos     | ---                   | " %8.4f A_ing
display ""
display "PERCENTILES SOSPECHOSOS (ingpc)"
display "  P95                           | 950   (entero exacto) | " %8.2f p95
display "  P97.5                         | 1,260 (entero exacto) | " %8.2f p97_5
display "  Diagnóstico                   | no documentado        | categorización probable"
display ""
display "WINSORIZACIÓN"
display "  Gini P99 winsorizado          | 0.4368 (real)         | " %8.4f gini_w99 " (real)"
display "------------------------------------------------------------------------"
display "NOTA: IDH-D v4.0 no es directamente comparable con v3.0 por cambio"
display "      metodológico (Atkinson real vs. factor fijo)."
display "================================================================="

log close
display "✓ Log de auditoría exportado a: `audit_log'"
display "PROCESAMIENTO v4.0 TERMINADO EXITOSAMENTE."
