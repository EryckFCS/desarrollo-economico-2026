* ==============================================================================
* PROCESAMIENTO DE INDICADORES SOCIOECONOMICOS ENEMDU 2025 - PICHINCHA
* Boveda: docs/vaults/u3-ape-01-proyecto_final/ | process_2025.do | v5.0
* Autor: Erick Fabricio Condoy Seraquive
* Paquetes: ineqdeco (Jenkins,1998), glcurve (Van Kerm) -- ssc install
* ==============================================================================

clear all
macro drop _all
set more off
set graphics off
set seed 42

* --- 0. ENTORNO ---
local repo_name  "economic_development"
local user_home  = cond("`c(os)'"=="Windows", "Z:/home/erick-fcs", "/home/erick-fcs")
local proj_root  "`user_home'/Documentos/universidad/07_Ciclo/septimo_ciclo/`repo_name'"
local vault_dir  "`proj_root'/docs/vaults/u3-ape-01-proyecto_final"
local log_file   "`vault_dir'/logs/process_2025_stata.log"
local data_out   "`vault_dir'/data/base_pichincha_2025.dta"
local results_out "`vault_dir'/data/resultados_2025.csv"
local linea_pobreza  89.85
local linea_extrema  50.63

cd "`proj_root'"
capture log close
log using "`log_file'", replace text

* --- 1. CARGA Y FUSION ---
use "`vault_dir'/data/vivienda_2025_anual.dta", clear
foreach var in id_vivienda id_hogar periodo ciudad {
    capture confirm variable `var'
    if _rc == 0 {
        capture confirm string variable `var'
        if _rc == 0  replace `var' = trim(`var')
        else {
            tostring `var', replace
            replace `var' = trim(`var')
        }
    }
}
tempfile viviendas_temp
save "`viviendas_temp'", replace

use "`vault_dir'/data/personas_2025_anual.dta", clear
foreach var in id_vivienda id_hogar periodo ciudad {
    capture confirm variable `var'
    if _rc == 0 {
        capture confirm string variable `var'
        if _rc == 0  replace `var' = trim(`var')
        else {
            tostring `var', replace
            replace `var' = trim(`var')
        }
    }
}

capture confirm variable periodo
if _rc == 0 merge m:1 id_vivienda id_hogar periodo using "`viviendas_temp'", keep(match) keepusing(vi02 vi04a vi06 vi09 vi10 vi12) nogenerate
else        merge m:1 id_vivienda id_hogar using "`viviendas_temp'", keep(match) keepusing(vi02 vi04a vi06 vi09 vi10 vi12) nogenerate

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

destring fexp, replace force
local n_final = _N

* --- 3. DISENO MUESTRAL (svyset) ---
local psu_var ""
local strata_var ""
foreach v in upm conglomerado id_upm {
    capture confirm variable `v'
    if _rc == 0 local psu_var "`v'"
}
foreach v in estrato panelm dominio {
    capture confirm variable `v'
    if _rc == 0 local strata_var "`v'"
}

local diseno_ok = ("`psu_var'" != "" & "`strata_var'" != "")
if `diseno_ok' {
    svyset `psu_var' [pw=fexp], strata(`strata_var')
}
else {
    svyset [pw=fexp]
    // ALERTA: sin PSU/estrato -- svyset SRS ponderado. SE sub-estimados.
}

* ==============================================================================
* PROGRAMAS DE REPLICACION JACKKNIFE (delete-1-cluster)
* Un programa rclass por estadistico -- evita ambiguedad de parsing de opciones
* dentro de jackknife (bug conocido: dispatcher con option() confunde al parser
* en llamadas subsecuentes dentro del mismo do-file).
* ==============================================================================
capture program drop jk_gini_theil
program define jk_gini_theil, rclass
    syntax [if]
    marksample touse
    quietly ineqdeco ingpc [aw=fexp] if `touse'
    return scalar gini = r(gini)
    return scalar ge0  = r(ge0)
end

capture program drop jk_pobreza
program define jk_pobreza, rclass
    syntax [if]
    marksample touse
    quietly summarize pobre_ingresos [aw=fexp] if `touse'
    return scalar p_ingresos = r(mean)
    quietly summarize pobre_extremo [aw=fexp] if `touse'
    return scalar p_extremo  = r(mean)
end

capture program drop jk_ipm
program define jk_ipm, rclass
    syntax [if]
    marksample touse
    quietly summarize ipm_pobre [aw=fexp] if `touse'
    return scalar ipm = r(mean)
end

capture program drop jk_idh
program define jk_idh, rclass
    syntax [if]
    marksample touse
    quietly summarize idh_proxy_td [aw=fexp] if `touse'
    return scalar idh = r(mean)
end

* ==============================================================================
* OBJETIVO 1: DESIGUALDAD (GINI, THEIL L, DECILES, LORENZ)
* ==============================================================================
preserve
    keep if ingpc > 0 & !missing(ingpc)
    ineqdeco ingpc [aw=fexp]
    scalar gini_coef  = r(gini)
    scalar theil_coef = r(ge0)

    if `diseno_ok' {
        jackknife gini=r(gini) theil=r(ge0), cluster(`psu_var'): jk_gini_theil
        matrix V_jk = e(V)
        scalar gini_se  = sqrt(V_jk[1,1])
        scalar theil_se = sqrt(V_jk[2,2])
    }
    else {
        scalar gini_se  = .
        scalar theil_se = .
    }

    glcurve ingpc [aw=fexp], lorenz pvar(p) glvar(L) nograph replace
    twoway (line L p, lcolor(navy) lwidth(medium)) ///
           (line p p, lcolor(cranberry) lpattern(dash)), ///
           title("Curva de Lorenz - Pichincha 2025", color(navy)) ///
           subtitle("Gini = " + string(gini_coef, "%6.4f"), size(small)) ///
           xtitle("Proporcion acumulada de poblacion") ytitle("Proporcion acumulada de ingreso") ///
           legend(order(1 "Curva de Lorenz observada" 2 "Igualdad Perfecta")) ///
           graphregion(fcolor(white) lcolor(white)) plotregion(fcolor(white))
    graph export "`vault_dir'/assets/curva_lorenz_2025_stata.png", replace

    sort ingpc
    gen double w_cum = sum(fexp)
    gen double p_cum = w_cum / w_cum[_N]
    gen int decil = min(10, 1 + int(p_cum * 10))
    collapse (mean) ing_prom=ingpc (sum) ing_tot=ingpc [pw=fexp], by(decil)
    egen double ing_total_sum = sum(ing_tot)
    gen double part_pct = (ing_tot / ing_total_sum) * 100
    quietly summarize part_pct
    assert abs(r(sum) - 100) < 0.01
    export delimited decil ing_prom part_pct using "`vault_dir'/data/deciles_2025.csv", replace
restore

assert gini_coef  >= 0 & gini_coef  <= 1
assert theil_coef >= 0

* ==============================================================================
* OBJETIVO 2: POBREZA MONETARIA Y MULTIDIMENSIONAL (IPM OFICIAL 12 IND.)
* ==============================================================================
gen byte pobre_ingresos = (ingpc < `linea_pobreza') if !missing(ingpc)
replace pobre_ingresos = 0 if missing(pobre_ingresos)
gen byte pobre_extremo  = (ingpc < `linea_extrema') if !missing(ingpc)
replace pobre_extremo = 0 if missing(pobre_extremo)

if `diseno_ok' {
    jackknife p_ing=r(p_ingresos) p_ext=r(p_extremo), cluster(`psu_var'): jk_pobreza
    matrix B_pob = e(b)
    matrix V_pob = e(V)
    scalar pob_ing_mean = B_pob[1,1]
    scalar pob_ext_mean = B_pob[1,2]
    scalar pob_ing_se   = sqrt(V_pob[1,1])
    scalar pob_ext_se   = sqrt(V_pob[2,2])
}
else {
    quietly summarize pobre_ingresos [aw=fexp]
    scalar pob_ing_mean = r(mean)
    quietly summarize pobre_extremo [aw=fexp]
    scalar pob_ext_mean = r(mean)
    scalar pob_ing_se = .
    scalar pob_ext_se = .
}

* --- IPM OFICIAL INEC: 4 dimensiones x 12 indicadores ponderados ---
local w_edu  = 0.25 / 3.0
local w_trab = 0.25 / 3.0
local w_sal  = 0.25 / 2.0
local w_hab  = 0.25 / 4.0

* 1. Educación
capture confirm variable p03
capture confirm variable p07
if !_rc {
    gen byte d1_inasist = (p07 == 2) if !missing(p07) & inrange(p03,5,17)
}
else gen byte d1_inasist = .

capture confirm variable p03
capture confirm variable p11
if !_rc {
    gen byte d1_no_sup = (p11 == 1) if !missing(p11) & inrange(p03,18,29)
}
else gen byte d1_no_sup = .

capture confirm variable p03
capture confirm variable nnivins
if !_rc {
    gen byte d1_logro = (nnivins <= 3) if !missing(nnivins) & p03 >= 18
}
else gen byte d1_logro = .

* 2. Trabajo
capture confirm variable p03
capture confirm variable condact
if !_rc {
    gen byte d2_infantil = inlist(condact,1,2,3,4,5) if !missing(condact) & inrange(p03,5,17)
}
else gen byte d2_infantil = .

capture confirm variable condact
if !_rc {
    gen byte d2_desempleo = inlist(condact,2,3,4,5,6,7) if !missing(condact)
}
else gen byte d2_desempleo = .

capture confirm variable condact
capture confirm variable p48
if !_rc {
    gen byte d2_pension = (inlist(condact,1,2,3,4,5) & !inlist(p48,1,2,3)) if !missing(condact) & !missing(p48)
}
else gen byte d2_pension = .

* 3. Salud, agua y alimentación
gen byte d3_extrema = (ingpc < `linea_extrema') if !missing(ingpc)

capture confirm variable vi10
if !_rc {
    gen byte d3_agua = (vi10 != 1) if !missing(vi10)
}
else gen byte d3_agua = .

* 4. Hábitat y vivienda
bysort id_vivienda id_hogar: gen int miembros = _N

capture confirm variable vi06
if !_rc {
    gen byte d4_hacin = (vi06 > 0 & (miembros / vi06 > 3)) if !missing(vi06)
}
else gen byte d4_hacin = .

capture confirm variable vi02
capture confirm variable vi04a
if !_rc {
    gen byte d4_deficit = (inlist(vi02,5,6,7) | inlist(vi04a,5,6)) if !missing(vi02) & !missing(vi04a)
}
else gen byte d4_deficit = .

capture confirm variable vi09
if !_rc {
    gen byte d4_saneamiento = (!inlist(vi09,1,2)) if !missing(vi09)
}
else gen byte d4_saneamiento = .

capture confirm variable vi12
if !_rc {
    gen byte d4_basura = (vi12 != 1) if !missing(vi12)
}
else gen byte d4_basura = .

* --- AGREGACION POR HOGAR (Alkire-Foster) ---
foreach v in d1_inasist d1_no_sup d1_logro d2_infantil d2_desempleo d2_pension d3_extrema d3_agua d4_hacin d4_deficit d4_saneamiento d4_basura {
    bysort id_vivienda id_hogar: egen byte priv_`v' = max(`v')
}

gen double ci_ipm = 0
gen byte   n_validos = 0

foreach v in priv_d1_inasist priv_d1_no_sup priv_d1_logro {
    replace ci_ipm    = ci_ipm + cond(missing(`v'),0,`v') * `w_edu'
    replace n_validos  = n_validos + !missing(`v')
}
foreach v in priv_d2_infantil priv_d2_desempleo priv_d2_pension {
    replace ci_ipm    = ci_ipm + cond(missing(`v'),0,`v') * `w_trab'
    replace n_validos  = n_validos + !missing(`v')
}
foreach v in priv_d3_extrema priv_d3_agua {
    replace ci_ipm    = ci_ipm + cond(missing(`v'),0,`v') * `w_sal'
    replace n_validos  = n_validos + !missing(`v')
}
foreach v in priv_d4_hacin priv_d4_deficit priv_d4_saneamiento priv_d4_basura {
    replace ci_ipm    = ci_ipm + cond(missing(`v'),0,`v') * `w_hab'
    replace n_validos  = n_validos + !missing(`v')
}

gen byte ipm_pobre = (ci_ipm >= 0.3333) if n_validos > 0

if `diseno_ok' {
    jackknife ipm=r(ipm), cluster(`psu_var'): jk_ipm
    scalar ipm_incidencia = e(b)[1,1]
    scalar ipm_se = sqrt(e(V)[1,1])
}
else {
    quietly summarize ipm_pobre [aw=fexp]
    scalar ipm_incidencia = r(mean)
    scalar ipm_se = .
}
quietly summarize ci_ipm [aw=fexp] if ipm_pobre==1
scalar ipm_intensidad = r(mean)
scalar ipm_ajustado = ipm_incidencia * ipm_intensidad
assert inlist(ipm_pobre, 0, 1) if !missing(ipm_pobre)

* ==============================================================================
* OBJETIVO 3: IDH PROXY E IDH-D (AGREGACION TOP-DOWN, ESTANDAR PNUD)
* ==============================================================================
capture confirm variable vi09
capture confirm variable vi10
if !_rc {
    gen byte index_salud = ((vi09==1) | (vi10==1)) if !(missing(vi09) & missing(vi10))
}
else gen byte index_salud = .

capture confirm variable p10a
if !_rc {
    gen double anios_escol = .
    replace anios_escol = 0  if inlist(p10a,1,2,3)
    replace anios_escol = 6  if p10a==4
    replace anios_escol = 12 if inlist(p10a,5,6)
    replace anios_escol = 16 if p10a==7
    capture confirm variable p10b
    if !_rc replace anios_escol = anios_escol + p10b if !missing(p10b) & p10b>=0 & inlist(p10a,3,4,5,6,7)
    replace anios_escol = min(max(anios_escol,0),18)
    gen double index_educ = anios_escol/18
    replace    index_educ = . if missing(p10a) | p10a==9
}
else gen double index_educ = .

local ln_min = ln(100)
local ln_max = ln(75000)
gen double index_ing = (ln(ingpc*12) - `ln_min') / (`ln_max' - `ln_min') if ingpc > 0 & !missing(ingpc)
replace    index_ing = 0 if index_ing < 0 & !missing(index_ing)
replace    index_ing = 1 if index_ing > 1 & !missing(index_ing)

* --- Agregacion TOP-DOWN: promedio poblacional por dimension, luego media geometrica ---
quietly summarize index_salud [aw=fexp]
scalar mu_salud = r(mean)
quietly summarize index_educ [aw=fexp]
scalar mu_educ  = r(mean)
quietly summarize index_ing [aw=fexp]
scalar mu_ing   = r(mean)
scalar idh_proxy_pop = (mu_salud * mu_educ * mu_ing)^(1/3)

* variable individual usada solo para jackknife de referencia (bottom-up, documentar diferencia)
gen double idh_proxy_td = (index_salud * index_educ * index_ing)^(1/3)
replace    idh_proxy_td = . if missing(index_salud, index_educ, index_ing)

if `diseno_ok' {
    jackknife idh=r(idh), cluster(`psu_var'): jk_idh
    scalar idh_se = sqrt(e(V)[1,1])
}
else scalar idh_se = .

* --- IDH-D: perdida de Atkinson (eps=1) por dimension, agregacion top-down ---
* mu_arith (media aritmetica poblacional) ya calculada arriba como mu_salud/mu_educ/mu_ing.
foreach d in salud educ ing {
    quietly gen double _log_`d' = ln(max(index_`d', 0.001)) if !missing(index_`d')
    quietly summarize _log_`d' [aw=fexp]
    scalar mu_`d'_geom  = exp(r(mean))
    scalar A_`d'        = 1 - mu_`d'_geom / mu_`d'
    scalar idh_d_`d'    = mu_`d'_geom
    drop _log_`d'
}
scalar idhd_proxy_pop = (idh_d_salud * idh_d_educ * idh_d_ing)^(1/3)
scalar perdida_pct    = (1 - idhd_proxy_pop/idh_proxy_pop) * 100

* ==============================================================================
* ANEXO A: ANALISIS DESCRIPTIVO Y DIAGNOSTICOS (VIF, CORRELACION)
* ==============================================================================
capture confirm variable anios_escol
capture confirm variable p04
local diag_ok = (!_rc)
if `diag_ok' {
    correlate ingpc fexp p04 anios_escol
    quietly regress ingpc anios_escol p04
    estat vif
}

* ==============================================================================
* ANEXO B: SENSIBILIDAD -- WINSORIZACION DE INGRESOS (ROBUSTEZ, OBJETIVO 1)
* Prueba de estabilidad ante colas pesadas (kurtosis observada > 300, no ponderada).
* No sustituye la estimacion principal; documenta robustez del Gini/Theil base.
* ==============================================================================
preserve
    _pctile ingpc [pw=fexp], percentiles(95 97.5 99)
    local pctls "95 97_5 99"
    local i = 1
    foreach p of local pctls {
        scalar p`p' = r(r`i')
        local ++i
    }
    capture drop ingpc_w99 wc wyc p_w L_w p_prev L_prev trap area
    gen double ingpc_w99 = min(ingpc, p99)
    sort ingpc_w99
    gen double wc  = sum(fexp)
    gen double wyc = sum(ingpc_w99 * fexp)
    gen double p_w = wc / wc[_N]
    gen double L_w = wyc / wyc[_N]
    gen double p_prev = p_w[_n-1]
    gen double L_prev = L_w[_n-1]
    replace p_prev = 0 in 1
    replace L_prev = 0 in 1
    gen double trap = (p_w-p_prev)*(L_w+L_prev)/2
capture drop area
quietly egen double area = sum(trap)
    scalar gini_w99 = 1 - 2*area[1]
restore

* ==============================================================================
* EXPORTACION DE RESULTADOS CONSOLIDADOS
* ==============================================================================
compress
save "`data_out'", replace

preserve
    clear
    set obs 1
    gen gini                    = gini_coef
    gen gini_se                 = gini_se
    gen theil                   = theil_coef
    gen theil_se                = theil_se
    gen pobreza_ingresos        = pob_ing_mean
    gen pobreza_ingresos_se     = pob_ing_se
    gen pobreza_extrema         = pob_ext_mean
    gen pobreza_extrema_se      = pob_ext_se
    gen ipm_incidencia          = ipm_incidencia
    gen ipm_se                  = ipm_se
    gen ipm_intensidad          = ipm_intensidad
    gen ipm_ajustado            = ipm_ajustado
    gen idh_proxy               = idh_proxy_pop
    gen idh_se                  = idh_se
    gen idhd_proxy              = idhd_proxy_pop
    gen perdida_desigualdad_pct = perdida_pct
    gen gini_winsorizado_p99    = gini_w99
    gen n_obs                   = `n_final'
    export delimited using "`results_out'", replace
restore

log close