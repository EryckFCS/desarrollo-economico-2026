* 04_Graficos.do - Fase 4: Evidencia Visual
* Auditoría Económica AA-U1

capture log close
log using "../../logs/fase4_graficos.log", replace

use "../../data/processed/KOR_Audit_Master.dta", clear

* 1. Gráfico de Modernización: PIB per cápita y Capital Humano
twoway (line gdp_pc year, yaxis(1)) (line hc year, yaxis(2)), ///
    title("Corea del Sur: Trayectoria de Modernización") ///
    subtitle("PIB per cápita y Capital Humano (1980-2020)") ///
    ytitle("PIB pc (Precios 2017)", axis(1)) ///
    ytitle("Índice HC", axis(2)) ///
    legend(label(1 "PIB pc") label(2 "Cap. Humano"))
graph export "../../assets/grafico_modernizacion.png", replace

* 2. Gráfico Estructuralista: Manufacturas y Términos de Intercambio
twoway (line manuf_exp_pct year) (line terms_of_trade year, yaxis(2)), ///
    title("Corea del Sur: Transformación Estructural") ///
    subtitle("Manufacturas y Relación de Intercambio") ///
    ytitle("% Export. Manufacturas", axis(1)) ///
    ytitle("RRI (2015=100)", axis(2)) ///
    legend(label(1 "% Manuf") label(2 "Términos Intercambio"))
graph export "../../assets/grafico_estructuralista.png", replace

display "--- Fase 4 Finalizada (Gráficos guardados en assets/) ---"
log close
