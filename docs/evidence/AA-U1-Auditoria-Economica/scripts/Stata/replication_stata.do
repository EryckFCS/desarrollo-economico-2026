* replication_stata.do - AUDITORÍA ECONÓMICA: COREA DEL SUR (1980-2020)
* UNIFICADO CON RUTAS ABSOLUTAS PARA FACILITAR EJECUCIÓN DIRECTA
* NODO: Applied Econometrics / Economic Development

clear all
set more off
capture log close

* ==============================================================================
* 1. DEFINICIÓN DE RUTAS ABSOLUTAS
* ==============================================================================
local boveda      "/home/erick-fcs/Documentos/universidad/07_Ciclo/septimo_ciclo/economic_development/docs/evidence/AA-U1-Auditoria-Economica"
local raw_data    "`boveda'/data/raw/KOR_Audit_Data.xlsx"
local processed   "`boveda'/data/processed"
local assets      "`boveda'/assets"
local logs        "`boveda'/logs"

log using "`logs'/audit_master_replication.log", replace

display "--- INICIANDO PROCESO DE RÉPLICA UNIFICADO ---"

* ==============================================================================
* 2. INGESTA Y PREPARACIÓN DE DATOS
* ==============================================================================
display "-> Importando datos desde Excel..."
import excel "`raw_data'", sheet("MainData") firstrow clear

* Renombrar para consistencia con análisis previo
rename rgdpna gdp_total
rename manuf_exports_raw manuf_exp_pct
rename terms_of_trade_raw terms_of_trade

* Convertir año a numérico y configurar panel
destring year, replace
tsset year

* Etiquetado de variables (Metadatos de Stata)
label var year "Año calendario"
label var gdp_pc "PIB Real per cápita (Calculado PWT 11.0)"
label var gdp_total "PIB Real Total (rgdpna)"
label var pop "Población (Millones)"
label var hc "Índice de Capital Humano"
label var manuf_exp_pct "Export. Manufacturas (% export. mercancías)"
label var terms_of_trade "Relación Real de Intercambio (RRI)"

* ==============================================================================
* 3. GENERACIÓN DE EVIDENCIA VISUAL (GRÁFICOS)
* ==============================================================================
display "-> Generando Gráfico de Modernización..."
twoway (line gdp_pc year, yaxis(1) lcolor(navy) lwidth(medium)) ///
       (line hc year, yaxis(2) lcolor(cranberry) lwidth(medium)), ///
    title("{bf:Corea del Sur: Trayectoria de Modernización}") ///
    subtitle("PIB per cápita y Capital Humano (1980-2020)") ///
    ytitle("PIB pc (Precios 2017)", axis(1)) ///
    ytitle("Índice de Capital Humano", axis(2)) ///
    xlabel(1980(5)2020) ///
    legend(order(1 "PIB pc (Esc. Izq)" 2 "Cap. Humano (Esc. Der)") region(lcolor(none))) ///
    graphregion(color(white))

graph export "`assets'/grafico_modernizacion.png", replace

display "-> Generando Gráfico Estructuralista..."
twoway (line manuf_exp_pct year, lcolor(emerald) lwidth(medium)) ///
       (line terms_of_trade year, yaxis(2) lcolor(orange) lwidth(medium)), ///
    title("{bf:Corea del Sur: Transformación Estructural}") ///
    subtitle("Manufacturas y Relación de Intercambio") ///
    ytitle("% Exportaciones Manufacturas", axis(1)) ///
    ytitle("RRI (Base variable)", axis(2)) ///
    xlabel(1980(5)2020) ///
    legend(order(1 "% Manufacturas (Esc. Izq)" 2 "Términos Intercambio (Esc. Der)") region(lcolor(none))) ///
    graphregion(color(white))

graph export "`assets'/grafico_structuralista.png", replace

* ==============================================================================
* 4. CIERRE Y EXPORTACIÓN
* ==============================================================================
display "-> Guardando base de datos procesada (.dta)..."
save "`processed'/KOR_Audit_Final.dta", replace

summarize

display "--- PROCESO FINALIZADO EXITOSAMENTE ---"
display "Documentos generados:"
display "1. Log: `logs'/audit_master_replication.log"
display "2. Base: `processed'/KOR_Audit_Final.dta"
display "3. Gráficos: `assets'/"

log close
