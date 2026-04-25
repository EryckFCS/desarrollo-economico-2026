* 03_Calculos.do - Fase 3: Procesamiento y Metadatos
* Auditoría Económica AA-U1

capture log close
log using "../../logs/fase3_calculos.log", replace

use "../../data/processed/temp_consolidada.dta", clear

* 1. Cálculos de Modernización
display "Calculando indicadores de desarrollo..."
gen gdp_pc = rgdpna / pop
label var gdp_pc "PIB Real per cápita (rgdpna/pop)"

* Tasa de crecimiento del PIB pc
gen growth_gdp_pc = (gdp_pc / l.gdp_pc - 1) * 100 if year > 1980
label var growth_gdp_pc "Tasa de crecimiento PIB pc (%)"

* 2. Configuración de Panel
tsset year

* 3. Etiquetado Profesional
label var year "Año calendario"
label var rgdpna "PIB Real (Precios 2017)"
label var rnna "Stock de Capital Real"
label var hc "Índice de Capital Humano"
label var manuf_exp_pct "% Exportaciones Manufacturas"
label var ind_va_pct "% Valor Agregado Industrial"
label var terms_of_trade "Relación Real de Intercambio (2015=100)"
label var fdi_pct_gdp "IED (% del PIB)"

save "../../data/processed/KOR_Audit_Master.dta", replace

display "--- Fase 3 Finalizada ---"
log close
