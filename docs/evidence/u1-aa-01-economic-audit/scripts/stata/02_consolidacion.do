* 02_Consolidacion.do - Fase 2: Unión de fuentes
* Auditoría Económica AA-U1

capture log close
log using "../../logs/fase2_consolidacion.log", replace

clear all

* 1. Cargar base base (WB)
use "../../data/processed/temp_wb.dta", clear

* 2. Unir con PWT
display "Uniendo series PWT y WB..."
merge 1:1 year using "../../data/processed/temp_pwt.dta"

* 3. Limpiar indicadores de unión
drop _merge
sort year

save "../../data/processed/temp_consolidada.dta", replace

display "--- Fase 2 Finalizada ---"
log close
