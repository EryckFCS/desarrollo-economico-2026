clear all
macro drop _all
set more off
set graphics off
set seed 42

// Dependencias
capture ssc install ineqdeco

// Entorno y logs
cd "`c(pwd)'"
capture log close
capture cd "/home/erick-fcs/Documentos/universidad/07_Ciclo/septimo_ciclo/economic_development/docs/vaults/u3-ape-01-proyecto_final/scripts"
log using "../logs/objetivo_1.log", replace text

* 1. Cargar base de personas
use "../data/personas_2025_anual.dta", clear

capture confirm string variable ciudad
if _rc == 0 {
    destring ciudad, gen(ciudad_num) force
    gen int provincia = int(ciudad_num / 10000)
    drop ciudad_num
}
else {
    gen int provincia = int(ciudad / 10000)
}
keep if provincia == 17
drop provincia

* 3. Quedarse únicamente con variables de desigualdad y población
keep id_vivienda id_hogar id_persona ciudad periodo ingpc fexp

* 4. Limpieza metodológica: ingresos válidos y estrictamente positivos para Gini y Theil
destring ingpc, replace force
destring fexp, replace force
keep if !missing(ingpc) & ingpc > 0 & !missing(fexp) & fexp > 0

// Filtrado completado

// Datos preliminares: Tabulación de variables
tabulate periodo
tabulate ciudad if _n <= 10

// Estadísticos descriptivos preliminares (Objetivo 1)
summarize ingpc [aw=fexp], detail

// Cálculo de deciles de ingreso (Tabla 2)
preserve
    sort ingpc
    gen double w_cum_dec = sum(fexp)
    gen double p_cum_dec = w_cum_dec / w_cum_dec[_N]
    gen int decil = min(10, 1 + int(p_cum_dec * 10))
    collapse (mean) ing_prom=ingpc (sum) ing_tot=ingpc [pw=fexp], by(decil)
    egen double ing_total_sum = sum(ing_tot)
    gen double part_pct = (ing_tot / ing_total_sum) * 100
    gen double part_cum = sum(part_pct)
    
    display _newline "Tabla 2: Distribución decílica del ingreso per cápita (Pichincha, 2025)"
    list decil ing_prom part_pct part_cum, clean
    export excel using "../data/deciles_stata.xlsx", firstrow(variables) replace
restore

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

// Estimaciones de desigualdad obtenidas

// Guardar base final procesada limpia (.dta)
compress
save "../data/desigualdad_pichincha_2025_stata.dta", replace

// Exportar copia espejo en Excel (.xlsx)
export excel using "../data/desigualdad_pichincha_2025_stata.xlsx", firstrow(variables) replace

log close
