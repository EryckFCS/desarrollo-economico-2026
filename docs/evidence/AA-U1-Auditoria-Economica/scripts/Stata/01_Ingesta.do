* 01_Ingesta.do - Fase 1: Adquisición de Datos
* Auditoría Económica AA-U1

capture log close
log using "../../logs/fase1_ingesta.log", replace

clear all

* 1. Ingesta de Penn World Table (Local)
display "Importando PWT 11.0..."
import excel "../../data/raw/pwt110.xlsx", sheet("Data") firstrow clear
keep if countrycode == "KOR"
destring year, replace
keep if year >= 1980 & year <= 2020
save "../../data/processed/temp_pwt.dta", replace

* 2. Ingesta de Banco Mundial (API)
* Requisito: ssc install wbopendata
display "Consultando API Banco Mundial..."
wbopendata, country(KOR) indicator(TX.VAL.MANF.ZS.UN; NV.IND.TOTL.ZS; TT.PRI.MRCH.XD.WD; BX.KLT.DINV.WD.GD.ZS) year(1980:2020) clear

* Renombrar para estandarizar
rename tx_val_manf_zs_un manuf_exp_pct
rename nv_ind_totl_zs ind_va_pct
rename tt_pri_mrch_xd_wd terms_of_trade
rename bx_klt_dinv_wd_gd_zs fdi_pct_gdp

save "../../data/processed/temp_wb.dta", replace

display "--- Fase 1 Finalizada ---"
log close
