clear all
import spss using "C:\Users\Usuario\OneDrive\Documentos\7mo ciclo\Desarrollo Económico\Unidad 3\BDDenemdu_personas_2025_anual.sav"

///////////////////  LIMPIEZA DE LA BASE - PICHINCHA     ///////////////////////

==========================================================
Se conservan los codigos de 6 cifras que empiecen con 17 
(Provincia Pichincha 17 - Canton Dist. Metropolitano Quito 01 - Parroquia Quito 50) 170150
==========================================================

* Asegurar que ciudad sea numérica
capture destring ciudad, replace

* Quedarse solo con códigos de 6 cifras que empiezan con 17
keep if inrange(ciudad, 170000, 179999)
tab ciudad

==========================================================
Para una mejor comprension de a que parroquia pertenece el código, se los nombran en base a la Clasificación Geográfica Estadística del Censo 2022
==========================================================

* Crear variables de nombres
capture drop parroquia_nombre
capture drop canton_nombre

gen str40 parroquia_nombre = ""
gen str40 canton_nombre = ""

*----------------------------------------------------------
* DISTRITO METROPOLITANO DE QUITO
*----------------------------------------------------------

replace parroquia_nombre = "QUITO" if ciudad == 170150
replace parroquia_nombre = "ALANGASI" if ciudad == 170151
replace parroquia_nombre = "AMAGUANA" if ciudad == 170152
replace parroquia_nombre = "ATAHUALPA" if ciudad == 170153
replace parroquia_nombre = "CALACALI" if ciudad == 170154
replace parroquia_nombre = "CALDERON" if ciudad == 170155
replace parroquia_nombre = "CONOCOTO" if ciudad == 170156
replace parroquia_nombre = "CUMBAYA" if ciudad == 170157
replace parroquia_nombre = "CHECA" if ciudad == 170159
replace parroquia_nombre = "EL QUINCHE" if ciudad == 170160
replace parroquia_nombre = "GUALEA" if ciudad == 170161
replace parroquia_nombre = "GUANGOPOLO" if ciudad == 170162
replace parroquia_nombre = "GUAYLLABAMBA" if ciudad == 170163
replace parroquia_nombre = "LA MERCED" if ciudad == 170164
replace parroquia_nombre = "LLANO CHICO" if ciudad == 170165
replace parroquia_nombre = "NANEGAL" if ciudad == 170168
replace parroquia_nombre = "NANEGALITO" if ciudad == 170169
replace parroquia_nombre = "NAYON" if ciudad == 170170
replace parroquia_nombre = "NONO" if ciudad == 170171
replace parroquia_nombre = "PACTO" if ciudad == 170172
replace parroquia_nombre = "PIFO" if ciudad == 170175
replace parroquia_nombre = "PINTAG" if ciudad == 170176
replace parroquia_nombre = "POMASQUI" if ciudad == 170177
replace parroquia_nombre = "PUELLARO" if ciudad == 170178
replace parroquia_nombre = "PUEMBO" if ciudad == 170179
replace parroquia_nombre = "SAN ANTONIO" if ciudad == 170180
replace parroquia_nombre = "SAN JOSE DE MINAS" if ciudad == 170181
replace parroquia_nombre = "TABABELA" if ciudad == 170183
replace parroquia_nombre = "TUMBACO" if ciudad == 170184
replace parroquia_nombre = "YARUQUI" if ciudad == 170185

replace canton_nombre = "DISTRITO METROPOLITANO DE QUITO" if parroquia_nombre != "" & inrange(ciudad, 170150, 170185)

*----------------------------------------------------------
* CAYAMBE
*----------------------------------------------------------

replace parroquia_nombre = "CAYAMBE" if ciudad == 170250
replace parroquia_nombre = "ASCAZUBI" if ciudad == 170251
replace parroquia_nombre = "CANGAHUA" if ciudad == 170252
replace parroquia_nombre = "OLMEDO" if ciudad == 170253
replace parroquia_nombre = "OTON" if ciudad == 170254
replace parroquia_nombre = "SANTA ROSA DE CUZUBAMBA" if ciudad == 170255
replace parroquia_nombre = "SAN JOSE DE AYORA" if ciudad == 170256

replace canton_nombre = "CAYAMBE" if inrange(ciudad, 170250, 170256)

*----------------------------------------------------------
* MEJIA
*----------------------------------------------------------

replace parroquia_nombre = "MACHACHI" if ciudad == 170350
replace parroquia_nombre = "ALOAG" if ciudad == 170351
replace parroquia_nombre = "ALOASI" if ciudad == 170352
replace parroquia_nombre = "CUTUGLAHUA" if ciudad == 170353
replace parroquia_nombre = "MANUEL CORNEJO ASTORGA" if ciudad == 170355
replace parroquia_nombre = "TAMBILLO" if ciudad == 170356

replace canton_nombre = "MEJIA" if inrange(ciudad, 170350, 170356)

*----------------------------------------------------------
* PEDRO MONCAYO
*----------------------------------------------------------

replace parroquia_nombre = "TABACUNDO" if ciudad == 170450
replace parroquia_nombre = "LA ESPERANZA" if ciudad == 170451
replace parroquia_nombre = "MALCHINGUI" if ciudad == 170452
replace parroquia_nombre = "TUPIGACHI" if ciudad == 170454

replace canton_nombre = "PEDRO MONCAYO" if inrange(ciudad, 170450, 170454)

*----------------------------------------------------------
* RUMIÑAHUI
*----------------------------------------------------------

replace parroquia_nombre = "SANGOLQUI" if ciudad == 170550
replace parroquia_nombre = "COTOGCHOA" if ciudad == 170551

replace canton_nombre = "RUMIÑAHUI" if inrange(ciudad, 170550, 170551)

*----------------------------------------------------------
* SAN MIGUEL DE LOS BANCOS
*----------------------------------------------------------

replace parroquia_nombre = "SAN MIGUEL DE LOS BANCOS" if ciudad == 170750
replace parroquia_nombre = "MINDO" if ciudad == 170751

replace canton_nombre = "SAN MIGUEL DE LOS BANCOS" if inrange(ciudad, 170750, 170751)

*----------------------------------------------------------
* PEDRO VICENTE MALDONADO
*----------------------------------------------------------

replace parroquia_nombre = "PEDRO VICENTE MALDONADO" if ciudad == 170850
replace canton_nombre = "PEDRO VICENTE MALDONADO" if ciudad == 170850

*----------------------------------------------------------
* PUERTO QUITO
*----------------------------------------------------------

replace parroquia_nombre = "PUERTO QUITO" if ciudad == 170950
replace canton_nombre = "PUERTO QUITO" if ciudad == 170950

* Verificación
tab canton_nombre
tab parroquia_nombre

///////////////  1.2 CONSERVAR VARIABLES IMPORTANTES

==========================================================

==========================================================

keep ///
prov ciudad canton_nombre parroquia_nombre area dominio periodo mes /// *Identificacion territorial*
fexp upm estrato conglomerado /// *Disenio muestral*
id_vivienda id_hogar id_persona vivienda hogar p01 p04 /// *Identificacion personas*
p02 p03 /// *Sexo y edad*
ingpc ingrl pobreza epobreza /// *Ingreso y pobreza*
p07 p08 p09 p10a p10b p11 p12a p12b nnivins /// *Educacion*
p05a p05b p20 p21 p22 p24 p25 p27 p28 p32 p34 p35 p36 /// *Seguro social* 
p44f p51a p51b p51c p61b1 condact empleo desempleo /// *Trabajo*
p15aa p15ab p74a p74b /// *Migracion*
p15 ced01a /// *etnia - cedula*

keep ///
prov ciudad canton_nombre parroquia_nombre area dominio periodo mes ///
fexp upm estrato conglomerado /// 
id_vivienda id_hogar id_persona vivienda hogar p01 p04 ///
p02 p03 ///
ingpc ingrl pobreza epobreza ///
p07 p08 p09 p10a p10b p11 p12a p12b nnivins /// 
p05a p05b p20 p21 p22 p24 p25 p27 p28 p32 p34 p35 p36 /// 
p44f p51a p51b p51c p61b1 condact empleo desempleo ///
p15aa p15ab p74a p74b ///
p15 ced01a 


clear all
use "C:\Users\Usuario\Downloads\basepichincha.dta"

///////////////  Objetivo 1 relacionado con DESARROLLO HUMANO
*---------------------------------   IDH   --------------------------------------*
* 1. Indice de educacion
*** 1.1 Años promedio de escolaridad (MYS)

capture drop esc

gen esc = .

replace esc = 0       if p10a==1
replace esc = p10b    if p10a==2
replace esc = p10b    if p10a==4
replace esc = 7+p10b  if p10a==5
replace esc = 10+p10b if p10a==6
replace esc = 13+p10b if p10a==7
replace esc = 13+p10b if p10a==8
replace esc = 13+p10b if p10a==9
replace esc = 18+p10b if p10a==10

mean esc [aw=fexp] if p03>=25

scalar MYS = r(table)[1,1]
scalar IMYS = MYS/15

display "Años promedio de escolaridad = " MYS
display "Índice MYS = " IMYS

*** 1.2 Años esperados de escolaridad (EYS)

capture drop asiste

gen asiste = (p07==1)

mean asiste [aw=fexp] if inrange(p03,5,18)

scalar tasa = r(table)[1,1]

scalar EYS = tasa*18
scalar IEYS = EYS/18

display "Años esperados de escolaridad = " EYS
display "Índice EYS = " IEYS

*** 1.3 Calculo del indice de Educación

scalar IE = (IMYS+IEYS)/2
display "Índice de Educación = " IE

* 2. Indice de salud

scalar EV = 82.2

scalar IS = (EV-20)/(85-20)

display "Índice de Salud = " IS

* 3. Indice de ingreso

mean ingpc [aw=fexp]

scalar ING = r(table)[1,1] * 12

scalar II = (ln(ING)-ln(100))/(ln(75000)-ln(100))

display "Ingreso anual per cápita = " ING
display "Índice de Ingreso = " II

* 4. Calculo del IDH

scalar IDH = (IS*IE*II)^(1/3)

display " "
display "=========================================="
display "      IDH DE PICHINCHA - 2025"
display "=========================================="
display "Índice de Salud      = " %6.4f IS
display "Índice de Educación  = " %6.4f IE
display "Índice de Ingreso    = " %6.4f II
display "------------------------------------------"
display "IDH                  = " %6.4f IDH


*-------------------------   IDH - Modificado   --------------------------------*
==========================================================
Se considera como dimension adicional la migracion neta. 
==========================================================

* 1.Indice de migracion

* Tasa neta de migración de Pichincha (2025)
scalar TMN = 0.0647965

* Valores mínimo y máximo utilizados para normalizar 
scalar TMNmin = -17.7014674
scalar TMNmax = 1.7109644

scalar IM = (TMN-TMNmin)/(TMNmax-TMNmin)

display "Índice de Migración = " IM

* 2. Calculo del IDH modificado

scalar IDHA = (IS*IE*II*IM)^(1/4)

display " "
display "=========================================="
display "  IDH AUMENTADO - PICHINCHA 2025"
display "=========================================="
display "Índice de Salud      = " %6.4f IS
display "Índice de Educación  = " %6.4f IE
display "Índice de Ingreso    = " %6.4f II
display "Índice de Migración  = " %6.4f IM
display "------------------------------------------"
display "IDH Aumentado        = " %6.4f IDHA


//////////////////  Objetivo 2 relacionado con POBREZA   ///////////////////////

*-------------------------   Pobreza por Ingresos   ---------------------------*
cd "C:\Users\Usuario\OneDrive\Documentos\7mo ciclo\Desarrollo Económico\Unidad 3\Trabajo"
* Revisar la variable de pobreza por ingresos
describe pobreza
tab pobreza, missing

* Verificar categorías
label list  labels109

* Crear variable binaria de pobreza monetaria
* 1 = Pobre
* 0 = No pobre

gen pobreza_ingresos = .

replace pobreza_ingresos = 1 if pobreza == 1
replace pobreza_ingresos = 0 if pobreza == 0

* Etiquetas
label define pobre_ing 0 "No pobre" 1 "Pobre", replace
label values pobreza_ingresos pobre_ing

* Verificar distribución
tab pobreza_ingresos, missing

* Calcular incidencia de pobreza monetaria
mean pobreza_ingresos

* Obtener porcentaje
display r(mean)*100

* Declarar diseño muestral
svyset upm [pweight=fexp], strata(estrato)

* Estimar pobreza monetaria
svy: mean pobreza_ingresos

*--------------------  Índice de Pobreza Multidimensional   -------------------*

CONSTRUCCIÓN DE LAS DIMENSIONES PARA EL IPM OFICIAL

********************************************************************************
* DIMENSIÓN 1: EDUCACIÓN
********************************************************************************

*-------------------------------------------------------------------------------
* Indicador 1: Inasistencia a educación básica y bachillerato
* Población aplicable: 5 a 17 años
*-------------------------------------------------------------------------------
gen educ_inasistencia = .

* No privado: asiste a clases
replace educ_inasistencia = 0 if ///
    inrange(p03,5,17) & ///
    p07==1
 	
* Privado: no asiste a clases
replace educ_inasistencia = 1 if ///
    inrange(p03,5,17) & ///
    p07==2
	
tab educ_inasistencia if inrange(p03,5,17), missing

* Etiqueta
label define privacion 0 "No privado" 1 "Privado"
label values educ_inasistencia privacion

tab educ_inasistencia, missing
tab p07 educ_inasistencia if inrange(p03,5,17), row

*-------------------------------------------------------------------------------
* Indicador 2: No acceso a educación superior por razones económicas
* Población aplicable: 18 a 29 años
*-------------------------------------------------------------------------------
gen d2_superior = .

* Inicialmente toda la población aplicable no presenta privación
replace d2_superior = 0 if ///
    inrange(p03,18,29)
    
* Privación por razones económicas
replace d2_superior = 1 if ///
    inrange(p03,18,29) & ///
    p07==2 & ///
    p09==3
	
label values d2_superior privacion

tab d2_superior if inrange(p03,18,29), missing

*-------------------------------------------------------------------------------
* Indicador 3: Logro educativo incompleto
* Población aplicable: 18 a 64 años
*-------------------------------------------------------------------------------
gen educ_logro = .

* Población adulta (18 años o más)
replace educ_logro = 0 if inrange(p03,18,64)

* Privación educativa: Personas adultas sin educación o con educación incompleta
replace educ_logro = 1 if inrange(p03,18,64) & inlist(p10a,1,2)

* Primaria incompleta:
* Primaria completa = 6 años aprobados
replace educ_logro = 1 if inrange(p03,18,64) & p10a==4 & p10b<6

* Educación Básica incompleta:
* Educación básica = 10 años aprobados
replace educ_logro = 1 if inrange(p03,18,64) & p10a==5 & p10b<10

* Secundaria incompleta:
* Secundaria completa = 6 años dentro del nivel
replace educ_logro = 1 if inrange(p03,18,64) & p10a==6 & p10b<6

label values educ_logro privacion

tab educ_logro, missing             
tab p10a educ_logro if p03>=18, row

*-------------------------------------------------------------------------------
* En el algoritmo Alkire-Foster usado por INEC, los indicadores se construyen a nivel de persona,
* pero la pobreza multidimensional se determina a nivel de hogar.
* Entonces, siguiendo la lógica: Si al menos una persona del hogar presenta privación en un indicador,
* el hogar presenta privación en ese indicador.

* 1. Pasar indicadores individuales a hogar
* Existe al menos una persona privada en el hogar
bysort id_hogar: egen h_educ_inasistencia = max(educ_inasistencia)
bysort id_hogar: egen h_d2_superior = max(d2_superior)
bysort id_hogar: egen h_educ_logro = max(educ_logro)

* 2. ¿En este hogar existe al menos una persona que puede ser evaluada en este indicador?
bysort id_hogar: egen aplica_educ1 = max(inrange(p03,5,17))
bysort id_hogar: egen aplica_educ2 = max(inrange(p03,18,29))
bysort id_hogar: egen aplica_educ3 = max(inrange(p03,18,64))

* Casos donde el indicador no aplica
replace h_educ_inasistencia = . if aplica_educ1==0
replace h_d2_superior = . if aplica_educ2==0
replace h_educ_logro = . if aplica_educ3==0

* 3. Construcción de la DIMENSIÓN EDUCACIÓN
* Para obtener la privación de la dimensión Educación, debemos aplicar el umbral correspondiente.
* En el IPM Ecuador: Educación pesa 25%.
* Sus tres indicadores tienen pesos iguales (8,3% cada uno).
* Dimensión Educación = I1+I2+I3/3
egen dim_educacion = rowmean( ///
    h_educ_inasistencia ///
    h_d2_superior ///
    h_educ_logro)

* 4. Construccuón de la privación de la dimensión
* La dimensión queda privada cuando acumula al menos un tercio de las privaciones dentro de la dimensión.
gen priv_educacion = .

replace priv_educacion = 0 if dim_educacion==0

replace priv_educacion = 1 if ///
    dim_educacion>=1/3 & ///
    dim_educacion<.

tab dim_educacion, missing
tab priv_educacion dim_educacion, missing

save "base_IPM_educacion.dta", replace

********************************************************************************
* DIMENSIÓN 2: TRABAJO Y SEGURIDAD SOCIAL
********************************************************************************

*-------------------------------------------------------------------------------
* Indicador 4: No contribución al sistema de pensiones
* Población aplicable: personas ocupadas de 15 años o más
*-------------------------------------------------------------------------------
gen pensiones = .
replace pensiones = 0 if p03>=15 & empleo==1 & inlist(p61b1,1,2,3,4)

* Privación: trabaja pero no aporta a ningún sistema
replace pensiones = 1 if p03>=15 & empleo==1 & p61b1==5

label values pensiones privacion

tab pensiones, missing
tab p61b1 pensiones if p03>=15 & empleo==1, row

*-------------------------------------------------------------------------------
* Indicador 5: Empleo infantil y adolescente
* Población aplicable: personas de 15 años o más
*-------------------------------------------------------------------------------
gen trabajo_infantil = .

* Población aplicable: niños y adolescentes de 5 a 17 años
replace trabajo_infantil = 0 if inrange(p03,5,17)

* Privación: realiza actividades laborales
replace trabajo_infantil = 1 if inrange(p03,5,17) ///
    & p20==1

label values trabajo_infantil privacion

tab trabajo_infantil, missing
tab p20 trabajo_infantil if inrange(p03,5,17), row

*-------------------------------------------------------------------------------
* Indicador 6: Desempleo o empleo inadecuado
* Población aplicable: personas de 15 años o más
*-------------------------------------------------------------------------------
gen trabajo_inadecuado = .

* No privado: empleo adecuado/pleno
replace trabajo_inadecuado = 0 if condact==1

* Privación:
* subempleo, empleo no pleno, empleo no remunerado,
* empleo no clasificado y desempleo
replace trabajo_inadecuado = 1 if inlist(condact,2,3,4,5,6,7,8)

label values trabajo_inadecuado privacion

tab trabajo_inadecuado, missing
tab condact trabajo_inadecuado if p03>=15, row

*-------------------------------------------------------------------------------
* 1. Pasar indicadores individuales a hogar
bysort id_hogar: egen h_pensiones = max(pensiones)
bysort id_hogar: egen h_trabajo_infantil = max(trabajo_infantil)
bysort id_hogar: egen h_empleo_inadecuado = max(trabajo_inadecuado)

* Indicador 4. Existe al menos una persona ocupada de 15 años o más
bysort id_hogar: egen aplica_pensiones = max(empleo==1)
* Indicador 5. Existe al menos un niño/adolescente de 5 a 17 años
bysort id_hogar: egen aplica_infantil = max(inrange(p03,5,17))
* Indicador 6. Existe al menos una persona de 15 años o más
bysort id_hogar: egen aplica_empleo = max(inrange(condact,1,8))

* 2. Si nadie puede ser evaluado, no aplica
replace h_pensiones=. if aplica_pensiones==0
replace h_empleo_inadecuado = . if aplica_empleo==0

tab h_pensiones, missing
tab h_trabajo_infantil, missing
tab h_empleo_inadecuado, missing

* 3. Construcción de la DIMENSIÓN TRABAJO Y SEGURIDAD SOCIAL
* Dimensión Trabajo = I4+I5+I6/3
egen dim_trabajo = rowmean(h_pensiones h_trabajo_infantil h_empleo_inadecuado)

* 4. Construcción de la privacipón de la dimensión
gen priv_trabajo = .
replace priv_trabajo = 0 if dim_trabajo==0
replace priv_trabajo = 1 if dim_trabajo>=1/3 & dim_trabajo<.

tab dim_trabajo, missing
tab priv_trabajo, missing
sum dim_trabajo


save "base_IPM_trabajo.dta", replace



clear all 
. use "C:\Users\Usuario\Downloads\ENEMDU_Vivienda_Pichincha.dta"

********************************************************************************
* DIMENSIÓN 3: SALUD, AGUA Y ALIMENTACIÓN
********************************************************************************

*-------------------------------------------------------------
* Indicador 8: SIN SERVICIO DE AGUA POR RED PÚBLICA
*-------------------------------------------------------------
gen agua = 0
replace agua = 1 if vi10 != 1

label define privacion 0 "No privado" 1 "Privado", replace
label values agua privacion
label var agua "Sin servicio de agua por red pública"

tab agua, missing

* Conservar únicamente las variables necesarias
keep id_hogar agua

* Una observación por hogar
duplicates drop id_hogar, force

save "agua_hogar.dta", replace

clear all 
use "C:\Users\Usuario\Downloads\basepichincha.dta"
*-------------------------------------------------------------------------------
* Indicador 7: Pobreza extrema por ingresos
*-------------------------------------------------------------------------------
gen pobreza_extrema = epobreza

label values pobreza_extrema privacion
label var pobreza_extrema "Pobreza extrema por ingresos"

tab pobreza_extrema, missing

* Pasar el indicador al nivel del hogar
bysort id_hogar: egen h_pobreza_extrema = max(pobreza_extrema)

* Incorporar el indicador de agua
merge m:1 id_hogar using "agua_hogar.dta"
drop _merge
*-------------------------------------------------------------------------------

* Construcción de la dimensión 3 -----------------------------------------------
gen punt_salud_agua = (h_pobreza_extrema + agua)/2

tab punt_salud_agua, missing

save "base_IPM_salud.dta", replace

* Privación de la dimensión
gen priv_salud_agua = 0
replace priv_salud_agua = 1 if punt_salud_agua > 0

label values priv_salud_agua privacion
label var priv_salud_agua ///
"Privación dimensión Salud, Agua y Alimentación"

tab priv_salud_agua, missing

* Dejar una observación por hogar
keep id_hogar h_pobreza_extrema agua punt_salud_agua priv_salud_agua

*Base a nivel de hogar
bysort id_hogar: keep if _n==1

save "base_IPM_salud.dta", replace

********************************************************************************
* DIMENSIÓN 4: HÁBITAT, VIVIENDA Y AMBIENTE SANO
********************************************************************************

*-------------------------------------------------------------------------------
* Indicador 9: Hacinamiento
* Población aplicable: toda la población
*-------------------------------------------------------------------------------
* 1. Crear tamaño del hogar con base PERSONAS
bysort id_hogar: gen tam_hogar = _N
tab tam_hogar

* 2. Pasar a una observación por hogar
bysort id_hogar: keep if _n==1
keep id_hogar tam_hogar
count

* 3. Guardar la base de hogares con tamaño del hogar
save "tam_hogar.dta", replace

* 4. Unir tamaño del hogar con vivienda
use "C:\Users\Usuario\Downloads\ENEMDU_Vivienda_Pichincha.dta"

describe id_hogar vi07
merge 1:1 id_hogar using "tam_hogar.dta"
tab _merge
* Personas por dormitorio
gen personas_dorm = tam_hogar/vi07 if vi07>0
sum personas_dorm, detail

* 5. Construcción del indicador
* Privado (1): más de 3 personas por dormitorio.
* No privado (0): 3 o menos personas por dormitorio.
gen hacinamiento = .
replace hacinamiento = 0 if personas_dorm <= 3
replace hacinamiento = 1 if personas_dorm > 3
label values hacinamiento privacion
tab hacinamiento, missing

*-------------------------------------------------------------------------------
* Indicador 10: Déficit habitacional
* Población aplicable: toda la población
*-------------------------------------------------------------------------------
* 1. Techo ---------------------------------------------------------------------
gen techo=1 if vi03a==1 & inrange(vi03b,1,2)

replace techo=2 if ///
(vi03a>=2 & vi03a<=4 & inrange(vi03b,1,2)) | ///
(vi03a==1 & vi03b==3)

replace techo=3 if ///
(vi03a==5) | ///
(vi03b==3 & vi03a>=2 & vi03a<=4)

tab techo, missing
 
* 2. Paredes -------------------------------------------------------------------
gen pared=1 if ///
vi05a==1 & inrange(vi05b,1,2)

replace pared=2 if ///
(vi05a==1 & vi05b==3) | ///
(inrange(vi05a,2,3) & inrange(vi05b,1,2))

replace pared=3 if ///
((inrange(vi05a,2,6) & vi05b==3) | ///
 inrange(vi05a,4,6))

tab pared, missing

* 3. Piso ----------------------------------------------------------------------
gen piso=1 if ///
inrange(vi04a,1,3) & inrange(vi04b,1,2)

replace piso=2 if ///
(inrange(vi04a,4,5) & inrange(vi04b,1,2)) | ///
(inrange(vi04a,1,3) & vi04b==3)

replace piso=3 if ///
(vi04a==6) | ///
(inrange(vi04a,4,5) & vi04b==3)

tab piso, missing
 
* 4. Tipología de vivienda -----------------------------------------------------
gen tipviv=1 if ///
((techo==1 & pared==1 & inrange(piso,1,3)) | ///
 (techo==1 & pared==2 & piso==1))

replace tipviv=2 if ///
((techo==1 & pared==2 & inrange(piso,2,3)) | ///
 (techo==1 & pared==3 & inrange(piso,1,2)) | ///
 (techo==2 & pared==1 & inrange(piso,1,2)) | ///
 (techo==2 & pared==2 & inrange(piso,1,2)) | ///
 (techo==3 & pared==1 & inrange(piso,1,2)) | ///
 (techo==3 & pared==2 & piso==1))

replace tipviv=3 if ///
((techo==1 & pared==3 & piso==3) | ///
 (techo==2 & pared==1 & piso==3) | ///
 (techo==2 & pared==2 & piso==3) | ///
 (techo==2 & pared==3 & inrange(piso,1,3)) | ///
 (techo==3 & pared==1 & piso==3) | ///
 (techo==3 & pared==2 & inrange(piso,1,3)) | ///
 (techo==3 & pared==3 & inrange(piso,1,3)))

label define tipologia 1 "Aceptables" 2 "Recuperables" 3 "Irrecuperables"
label values tipviv tipologia

tab tipviv, missing

* Indicador de privación
gen deficit_habitacional=0
replace deficit_habitacional=1 if tipviv==2 | tipviv==3

label define deficit_lbl 0 "No privado" 1 "Privado"
label values deficit_habitacional deficit_lbl
label variable deficit_habitacional "Indicador 10. Déficit habitacional"

tab deficit_habitacional, missing

*-------------------------------------------------------------------------------
* Indicador 11: Sin saneamiento de excretas
* Población aplicable: toda la población
*-------------------------------------------------------------------------------
gen saneamiento = .

* Servicio adecuado 
replace saneamiento = 0 if inlist(vi09,1,2)
* Servicio inadecuado o inexistente dentro de la vivienda (0 = No privado).
replace saneamiento = 1 if inlist(vi09,3,4)
* No tiene servicio higiénico
replace saneamiento = 1 if vi09==5 & inlist(vi09a,1,2)
* Usa instalación sanitaria prestada
replace saneamiento = 0 if vi09==5 & vi09a==3 & inlist(vi09b,1,2)
replace saneamiento = 1 if vi09==5 & vi09a==3 & vi09b==3

label values saneamiento privacion
label variable saneamiento "Indicador 11. Sin saneamiento de excretas"

tab saneamiento, missing
tab vi09 saneamiento, row

*-------------------------------------------------------------------------------
* Indicador 12: Sin servicio de reccolección de basura
* Población aplicable: toda la población
*-------------------------------------------------------------------------------
gen basura = 0

replace basura = 1 if inlist(vi13,3,4,5)

label values basura privacion

tab basura, missing

save "ENEMDU_Vivienda_Pichincha_indicadores.dta", replace

*-------------------------------------------------------------------------------
use "ENEMDU_Vivienda_Pichincha_indicadores.dta", clear
keep id_hogar hacinamiento deficit_habitacional saneamiento basura
describe
save "indicadores_vivienda_pichincha.dta", replace
*-------------------------------------------------------------------------------
use "C:\Users\Usuario\Downloads\basepichincha.dta"
merge m:1 id_hogar using "indicadores_vivienda_pichincha.dta"
*-------------------------------------------------------------------------------
* Construcción de la dimensión 4
gen punt_habitat = (hacinamiento + deficit_habitacional + saneamiento + basura)/4
* Privación de la dimensión
gen priv_habitat = 0
replace priv_habitat = 1 if punt_habitat > 0

label define privacion 0 "No privado" 1 "Privado", replace
label values priv_habitat privacion

tab priv_habitat

save "base_personas_pichincha_dimension4.dta", replace


*---------------------------------------------------------------
* Pasar la dimensión a nivel del hogar
*---------------------------------------------------------------

bysort id_hogar: egen h_punt_habitat = max(punt_habitat)
bysort id_hogar: egen h_priv_habitat = max(priv_habitat)

keep id_hogar h_punt_habitat h_priv_habitat

duplicates drop id_hogar, force

rename h_punt_habitat punt_habitat
rename h_priv_habitat priv_habitat

save "base_IPM_habitat.dta", replace

clear

use "base_IPM_educacion_hogar.dta", clear

merge 1:1 id_hogar using "base_IPM_trabajo_hogar.dta"
tab _merge
drop _merge

merge 1:1 id_hogar using "base_IPM_salud.dta"
tab _merge
drop _merge

merge 1:1 id_hogar using "base_IPM_habitat.dta"
tab _merge
drop _merge
save "base_IPM_final.dta", replace
clear all
 //CÁLCULO DEL IPM OFICIAL 
cd "C:\Users\Usuario\OneDrive\Documentos\7mo ciclo\Desarrollo Económico"
use "C:\Users\Usuario\OneDrive\Documentos\7mo ciclo\Desarrollo Económico\Unidad 3\Trabajo\base_IPM_final.dta"
* 1. Verificar variables de privación
describe priv_*

tab priv_educacion
tab priv_trabajo
tab priv_salud_agua
tab priv_habitat

* 2. Construcción del puntaje de privación IPM
* Las cuatro dimensiones tienen igual ponderación (25%)
gen punt_ipm_oficial = (priv_educacion + priv_trabajo + priv_salud_agua + priv_habitat) / 4

* Revisar distribución del puntaj
tab punt_ipm_oficial

* 3. Identificación de pobreza multidimensional
* Umbral k = 1/3 de privacionea
gen pobre_multi_oficial = 0
replace pobre_multi_oficial = 1 if punt_ipm_oficial >= 0.333333

* Verificar incidencia
tab pobre_multi_oficial

* 4. Número de privaciones acumuladas
gen privaciones_oficial = priv_educacion + priv_trabajo + priv_salud_agua + priv_habitat
tab privaciones_oficial


*------------------------------------------------------*
* 5. Incidencia (H)
*------------------------------------------------------*
summarize pobre_multi_oficial

scalar H = r(mean)

display "Incidencia IPM (H) (%) = " %6.2f (H*100)

*------------------------------------------------------*
* 6. Intensidad (A)
*------------------------------------------------------*
summarize punt_ipm_oficial if pobre_multi_oficial==1

scalar A = r(mean)

display "Intensidad IPM (A) (%) = " %6.2f (A*100)

*------------------------------------------------------*
* 7. Índice de Pobreza Multidimensional (M0)
*------------------------------------------------------*
scalar M0 = H*A

display "IPM (M0) = " %6.4f M0
display "IPM (M0) (%) = " %6.2f (M0*100)



*------------------------------------------------------*
* 5. Incidencia (H)
*------------------------------------------------------*
mean pobre_multi_oficial
display "Incidencia IPM (H) (%) = " r(mean)*100

*------------------------------------------------------*
* 6. Intensidad (A)
* Promedio de privaciones entre los pobres
*------------------------------------------------------*
mean punt_ipm_oficial if pobre_multi_oficial==1
display "Intensidad IPM (A) (%) = " r(mean)*100

*------------------------------------------------------*
* 7. Índice de pobreza multidimensional ajustado (M0)
* M0 = H * A
*------------------------------------------------------*
scalar H = r(mean)
mean punt_ipm_oficial if pobre_multi_oficial==1
scalar A = r(mean)
display "IPM ajustado (M0) (%) = " H*A*100


clear all
use "C:\Users\Usuario\Downloads\ENEMDU_Vivienda_Pichincha.dta"
*---------------------------------   IPM - Modificado  ------------------------*

CONSTRUCCIÓN DE LA DIMENSIÓN 5 DESDE ENEMDU 

* Construcción de indicadores de privación
* (1 = Privado; 0 = No privado)
gen priv_vehiculo   = (vi1511==2)
gen priv_moto       = (vi1512==2)
gen priv_computador = (eqt19a011==2)
gen priv_tablet     = (eqt19a012==2)
gen priv_smartphone = (eqt19a015==2)
gen priv_smarttv    = (eqt19a016==2)

* Puntaje de privación de activos
gen punt_activos = (priv_vehiculo + priv_moto + priv_computador + priv_tablet + ///
 priv_smartphone + priv_smarttv)/6

* Dimensión 5
* Hogar privado cuando presenta al menos la mitad de las privaciones en activos (3 de 6)
gen priv_activos = 0
replace priv_activos = 1 if punt_activos >= 0.50
label define privacion 0 "No privado" 1 "Privado", replace
label values priv_activos privacion
label variable priv_activos "Dimensión 5. Acceso a activos del hogar"

tab priv_activos
summ punt_activos

keep id_hogar priv_activos
save "indicadores_activos_pichincha.dta", replace

********************************************************************************
* DIMENSIÓN 5: ACCESO A ACTIVOS DEL HOGAR
********************************************************************************
clear all
 use "C:\Users\Usuario\Downloads\ENEMDU_Vivienda_Pichincha.dta", clear

*-------------------------------------------------------------------------------
* Indicador 13: Hogar sin vehículo
* Población aplicable: todos los hogares
*-------------------------------------------------------------------------------
gen sin_vehiculo = .

replace sin_vehiculo = 0 if vi1511 == 1
replace sin_vehiculo = 1 if vi1511 == 2

label values sin_vehiculo privacion
label variable sin_vehiculo "Indicador 13. Hogar sin vehículo"

tab sin_vehiculo, missing
*-------------------------------------------------------------------------------
* Indicador 14: Hogar sin motocicleta
* Población aplicable: todos los hogares
*-------------------------------------------------------------------------------
gen sin_moto = .

replace sin_moto = 0 if vi1512 == 1
replace sin_moto = 1 if vi1512 == 2

label values sin_moto privacion
label variable sin_moto "Indicador 14. Hogar sin motocicleta"

tab sin_moto, missing
*------------------------------------------------------------------------------
* Construcción de la dimensión
* Privación: hogar sin vehículo y sin motocicleta
*-------------------------------------------------------------------------------
gen priv_activos = 0

replace priv_activos = 1 if vi1511 == 2 & vi1512 == 2

label define privacion 0 "No privado" 1 "Privado", replace
label values priv_activos privacion

label variable priv_activos "Dimensión 5. Acceso a activos del hogar"

tab priv_activos, missing

* Guardar indicadores de hogar
keep id_hogar sin_vehiculo sin_moto priv_activos

save "indicadores_activos_pichincha.dta", replace
*------------------------------------------------------
use "base_IPM_final.dta", clear

merge m:1 id_hogar using "indicadores_activos_pichincha.dta"

tab _merge

drop _merge

tab priv_activos
save "base_personas_pichincha_dim4_dim5.dta", replace


CÁLCULO DEL ÍNDICE DE POBREZA MULTIDIMENSIONAL MODIFICADO

cd "C:\Users\Usuario\OneDrive\Documentos\7mo ciclo\Desarrollo Económico\Unidad 3\Trabajo"
use use "C:\Users\Usuario\OneDrive\Documentos\7mo ciclo\Desarrollo Económico\Unidad 3\Trabajo\base_personas_pichincha_dim4_dim5.dta", clear

describe priv_*

tab priv_educacion
tab priv_trabajo
tab priv_salud_agua
tab priv_habitat
tab priv_activos

* Puntaje de privaciones del IPM ampliado
* Cinco dimensiones con igual ponderación (20% c/u)
gen punt_ipm_ampliado = (priv_educacion + priv_trabajo + priv_salud_agua + ///
 priv_habitat + priv_activos) / 5

tab punt_ipm_ampliado

* Identificación de pobreza multidimensional
* Umbral k = 1/3
gen pobre_multi_ampliado = 0
replace pobre_multi_ampliado = 1 if punt_ipm_ampliado >= 0.333333
tab pobre_multi_ampliado

* Número de privaciones
gen privaciones_ampliado = ///
priv_educacion + ///
priv_trabajo + ///
priv_salud_agua + ///
priv_habitat + ///
priv_activos

tab privaciones_ampliado

*------------------------------------------------------------------*
* Incidencia (modificado) (H)
*------------------------------------------------------------------*
mean pobre_multi_ampliado
display "Incidencia (H) = " r(mean)*100 "%"

*------------------------------------------------------------------*
* Intensidad (modificado)(A)
*------------------------------------------------------------------*
mean punt_ipm_ampliado if pobre_multi_ampliado==1
display "Intensidad (A) = " r(mean)*100 "%"

*------------------------------------------------------------------*
* 7. Índice de Pobreza Multidimensional Ajustado (M0) (modificado)
*------------------------------------------------------------------*
scalar H = 0.3696071
scalar A = 0.4807944

display "IPM ajustado (M0) = " H*A*100 "%"






clear all
use "C:\Users\Usuario\Downloads\basepichincha.dta"

///////////////  4. DESIGUALDAD

* Mantener solo ingresos válidos
keep if !missing(ingpc, fexp)

*---------------------------------   Indice de Theil   --------------------------------------*

* 1. Calcular ingreso promedio 
gen ingreso_pond = ingpc * fexp

egen poblacion_total = total(fexp)
egen ingreso_total = total(ingreso_pond)

gen ingreso_promedio = ingreso_total / poblacion_total

* 2. Dividimos ingpc al promedio
gen ratio = ingpc / ingreso_promedio

* 3. Aplicamos logaritmos
gen theil_comp = 0
replace theil_comp = ratio * ln(ratio) if ingpc > 0

*** 3.1. Aplicar factor de expansion
gen theil_pond = theil_comp * fexp

* 4. Obtener indice de Theil
summ theil_pond
scalar suma_theil = r(sum)

scalar theil = suma_theil / poblacion_total

display "Indice de Theil de Pichincha = " theil

* 5. DESCOMPOSICION DE AREAS

* 1. Calcular población, ingreso e ingreso promedio por área
bysort area: egen pob_area = total(fexp)
bysort area: egen ing_area = total(ingreso_pond)

gen prom_area = ing_area / pob_area

* 2. Calcular Theil dentro de cada área
gen ratio_area = ingpc / prom_area

gen theil_comp_area = 0
replace theil_comp_area = ratio_area * ln(ratio_area) if ingpc > 0

gen theil_pond_area = theil_comp_area * fexp

bysort area: egen suma_theil_area = total(theil_pond_area)

gen theil_area = suma_theil_area / pob_area

* 3. Calcular aporte dentro y aporte entre áreas
gen peso_ingreso_area = ing_area / ingreso_total

gen theil_dentro_area = peso_ingreso_area * theil_area

gen theil_entre_area = peso_ingreso_area * ln(prom_area / ingreso_promedio)

* 4. Mostrar una sola fila por área
egen tag_area = tag(area)

list area prom_area theil_area theil_dentro_area theil_entre_area if tag_area, noobs

* 5. Obtener resultados finales
summ theil_dentro_area if tag_area
scalar theil_dentro = r(sum)

summ theil_entre_area if tag_area
scalar theil_entre = r(sum)

scalar theil_descompuesto = theil_dentro + theil_entre

display "Theil dentro de áreas = " theil_dentro
display "Theil entre áreas = " theil_entre
display "Theil total descompuesto = " theil_descompuesto

* Crear nombre del área
capture drop area_nombre
gen str10 area_nombre = ""

replace area_nombre = "Urbana" if area == 1
replace area_nombre = "Rural"  if area == 2

* Mostrar tabla final
format prom_area theil_area theil_dentro_area theil_entre_area %9.4f

list area_nombre  theil_area if tag_area, noobs


*---------------------------------   Curva de Lorenz  PICHINCHA  --------------------------------------*
* 1. Ordenar de menor a mayor ingreso
sort ingpc

* 2. Crear acumulados
capture drop pob_acumulado ing_acumulado x_poblacion y_ingreso

gen pob_acumulado = sum(fexp)
gen ing_acumulado = sum(ingreso_pond)

gen x_poblacion = (pob_acumulado / poblacion_total) * 100
gen y_ingreso   = (ing_acumulado / ingreso_total) * 100

* 3. Tabla de deciles

capture drop decil poblacion_decil ingreso_decil etiqueta

gen decil = .
gen poblacion_decil = .
gen ingreso_decil = .
gen etiqueta = ""

forvalues d = 0(10)100 {
    
    local fila = (`d'/10) + 1
    
    replace decil = `d'/10 in `fila'
    replace poblacion_decil = `d' in `fila'
    
    if `d' == 0 {
        replace ingreso_decil = 0 in `fila'
    }
    else {
        quietly summ y_ingreso if x_poblacion >= `d'
        replace ingreso_decil = r(min) in `fila'
    }
    
    replace etiqueta = string(ingreso_decil, "%4.2f") + "%" in `fila'
}

* Ver tabla
list decil poblacion_decil ingreso_decil in 1/11, noobs

* 4. Graficar curva de Lorenz

twoway ///
(line y_ingreso x_poblacion, sort) ///
(scatter ingreso_decil poblacion_decil in 1/11, mlabel(etiqueta) mlabposition(3)) ///
(function y=x, range(0 100)), ///
title("Curva de Lorenz - Pichincha") ///
xtitle("% acumulado de población") ///
ytitle("% acumulado de ingreso") ///
legend(label(1 "Curva de Lorenz") label(2 "Deciles") label(3 "Línea de igualdad")) ///
xlabel(0(10)100) ///
ylabel(0(10)100)

*---------------------------------   Curva de Lorenz NACIONAL  --------------------------------------*
==========================================================
No se hace el calculo a nivel nacional, se recogen los datos ya hechos (formato tabla) del estudio de (Narriaga, K. (oct 2025)) quien uso las misma base 2025 ENEMDU
==========================================================

preserve
clear

input decil_nac part_ing_nac x_nac y_nac
0   0.00   0     0.00
1   2.01   10    2.01
2   3.43   20    5.44
3   4.69   30    10.13
4   5.96   40    16.09
5   7.45   50    23.54
6   9.36   60    32.90
7   12.05  70    44.95
8   16.01  80    60.96
9   23.30  90    84.26
10  35.74  100   100.00
end

gen etiqueta_nac = string(y_nac, "%4.2f") + "%"

list decil_nac part_ing_nac x_nac y_nac, noobs

twoway ///
(line y_nac x_nac, sort) ///
(scatter y_nac x_nac, mlabel(etiqueta_nac) mlabposition(3)) ///
(function y=x, range(0 100)), ///
title("Curva de Lorenz - Nivel Nacional") ///
xtitle("% acumulado de población") ///
ytitle("% acumulado de ingreso") ///
legend(label(1 "Curva de Lorenz") label(2 "Deciles") label(3 "Línea de igualdad")) ///
xlabel(0(10)100) ///
ylabel(0(10)100)

restore


*---------------------------------   Coeficiente de Gini   --------------------------------------*
* 1. Ordenar la poblacion
sort x_poblacion

* 2. Calculas el porcentaje acumulado de población e ingreso
capture drop x_prop y_prop x_anterior y_anterior area_trapecio

gen x_prop = x_poblacion / 100
gen y_prop = y_ingreso / 100

* 3. Crear valores anteriores para calcular el área
gen x_anterior = x_prop[_n-1]
gen y_anterior = y_prop[_n-1]

replace x_anterior = 0 if _n == 1
replace y_anterior = 0 if _n == 1

*  4. Área bajo la Curva de Lorenz
gen area_trapecio = (x_prop - x_anterior) * (y_prop + y_anterior) / 2

summ area_trapecio
scalar area_lorenz = r(sum)

* 5. Calcular Gini
scalar gini = 1 - (2 * area_lorenz)

display "Coeficiente de Gini de Pichincha = " gini


*---------------------------------   Gini por área urbana y rural   --------------------------------------*

* Verificar cómo está codificada el área
tab area, nolabel

* Crear variables para el cálculo por área
capture drop ingreso_pond_area pob_total_area ing_total_area
capture drop pob_acum_area ing_acum_area x_area y_area
capture drop x_ant_area y_ant_area area_trap_area
capture drop area_lorenz_area gini_area tag_area area_nombre

* Ingreso ponderado
gen ingreso_pond_area = ingpc * fexp

* Ordenar por área y por ingreso
sort area ingpc

* Totales por área
bysort area: egen pob_total_area = total(fexp)
bysort area: egen ing_total_area = total(ingreso_pond_area)

* Acumulados por área
bysort area: gen pob_acum_area = sum(fexp)
bysort area: gen ing_acum_area = sum(ingreso_pond_area)

* Proporciones acumuladas por área
gen x_area = pob_acum_area / pob_total_area
gen y_area = ing_acum_area / ing_total_area

* Valores anteriores
bysort area: gen x_ant_area = x_area[_n-1]
bysort area: gen y_ant_area = y_area[_n-1]

replace x_ant_area = 0 if missing(x_ant_area)
replace y_ant_area = 0 if missing(y_ant_area)

* Área bajo la curva de Lorenz por área
gen area_trap_area = (x_area - x_ant_area) * (y_area + y_ant_area) / 2

bysort area: egen area_lorenz_area = total(area_trap_area)

* Gini por área
gen gini_area = 1 - (2 * area_lorenz_area)

* Nombre del área
gen str10 area_nombregini = ""
replace area_nombregini = "Urbana" if area == 1
replace area_nombregini = "Rural"  if area == 2

* Mostrar una sola fila por área
egen tag_areagini = tag(area)

format gini_area %9.4f

list area_nombregini gini_area if tag_areagini, noobs

clear all
import spss using "C:\Users\Usuario\OneDrive\Documentos\7mo ciclo\Desarrollo Económico\Unidad 3\BDDenemdu_personas_2025_anual.sav"

*---------------------------------   IDH ajustado por Desigualdad   --------------------------------------*


gen esc1 = esc + 0.000001

gen ln_esc = ln(esc1)

egen media_log_esc = mean(ln_esc)

gen geo_esc = exp(media_log_esc)

egen media_esc = mean(esc1)

gen Aedu = 1-(geo_esc/media_esc)

summ Aedu

scalar A_educ = r(mean)

scalar IE_adj = IE*(1-A_educ)

****************************************************
* DESIGUALDAD EN INGRESO
****************************************************

gen ing1 = ingpc + 0.000001

gen ln_ing = ln(ing1)

egen media_log_ing = mean(ln_ing)

gen geo_ing = exp(media_log_ing)

egen media_ing = mean(ing1)

gen Aing = 1-(geo_ing/media_ing)

summ Aing

scalar A_ing = r(mean)

scalar II_adj = II*(1-A_ing)

****************************************************
* SALUD
****************************************************

scalar A_salud = 0
scalar IS_adj = IS

****************************************************
* IDH AJUSTADO POR DESIGUALDAD
****************************************************

scalar IDHD = (IS_adj*IE_adj*II_adj)^(1/3)

display " "
display "=========================================="
display " IDH AJUSTADO POR DESIGUALDAD"
display "=========================================="
display "Atkinson Salud      = " %6.4f A_salud
display "Atkinson Educación  = " %6.4f A_educ
display "Atkinson Ingreso    = " %6.4f A_ing
display "------------------------------------------"
display "Salud ajustada      = " %6.4f IS_adj
display "Educación ajustada  = " %6.4f IE_adj
display "Ingreso ajustado    = " %6.4f II_adj
display "------------------------------------------"
display "IDH Ajustado        = " %6.4f IDHD