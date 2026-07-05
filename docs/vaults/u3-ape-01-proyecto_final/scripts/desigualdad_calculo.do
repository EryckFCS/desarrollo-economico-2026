* ==============================================================================
* CÁLCULO DE DESIGUALDAD ENEMDU ANUAL 2025 EN STATA (PICHINCHA)
* ==============================================================================
* Este script realiza de forma metodológicamente correcta el cálculo de:
* 1. Coeficiente de Gini (Fórmula de Brown Ponderada)
* 2. Puntos de la Curva de Lorenz
* 3. Índice de Theil (Entropía Ponderada)
*
* Filtra la base para Pichincha y exporta la base final limpia a DTA y Excel.
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
local vault_dir  "`proj_root'/docs/vaults/u3-ape-01-proyecto_final"
local data_in    "`vault_dir'/data/personas_2025_anual.dta"
local data_out   "`vault_dir'/data/desigualdad_pichincha_2025_stata.dta"
local excel_out  "`vault_dir'/data/desigualdad_pichincha_2025_stata.xlsx"

* 1. Cargar base de personas
use "`data_in'", clear

* 2. Filtrar por provincia de Pichincha (Código 17)
destring ciudad, gen(ciudad_num) force
gen int provincia = int(ciudad_num / 10000)
keep if provincia == 17
drop ciudad_num provincia

* 3. Quedarse únicamente con variables de desigualdad y población
keep id_vivienda id_hogar id_persona ciudad periodo ingpc fexp

* 4. Limpieza metodológica: ingresos válidos y estrictamente positivos para Gini y Theil
destring ingpc, replace force
destring fexp, replace force
keep if !missing(ingpc) & ingpc > 0 & !missing(fexp) & fexp > 0

display "Observaciones válidas en Pichincha con ingresos > 0 (Stata): `=_N'"

* 5. Ordenar por ingresos para Gini y Lorenz
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

* Valores lagged para el trapecio (Brown)
gen double p_prev = p[_n-1]
gen double L_prev = L[_n-1]
replace p_prev = 0 in 1
replace L_prev = 0 in 1

* Área bajo la Curva de Lorenz (regla del trapecio)
gen double trapecio = (p - p_prev) * (L + L_prev) / 2
egen double area_lorenz = sum(trapecio)

* Coeficiente de Gini
scalar gini_coef = 1 - 2 * area_lorenz[1]

* Índice de Theil L (Desviación Logarítmica Media)
gen double y_rel = (WY_total / W_total) / ingpc
gen double theil_contrib = fexp * ln(y_rel)
egen double sum_theil = sum(theil_contrib)
scalar theil_coef = sum_theil[1] / W_total

display _newline "============================================="
display "Resultados de Desigualdad Pichincha 2025 (Stata):"
display " - Coeficiente de Gini: " %6.4f gini_coef
display " - Índice de Theil:     " %6.4f theil_coef
display "============================================="

* 6. Guardar base final procesada limpia (.dta)
compress
save "`data_out'", replace
display "Base de datos final guardada en: `data_out'"

* 7. Exportar copia espejo en Excel (.xlsx)
export excel using "`excel_out'", firstrow(variables) replace
display "Copia espejo en Excel guardada en: `excel_out'"
