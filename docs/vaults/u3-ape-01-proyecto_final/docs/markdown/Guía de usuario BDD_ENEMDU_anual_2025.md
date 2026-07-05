# Documento: Guía de usuario BDD_ENEMDU_anual_2025
Source: Guía de usuario BDD_ENEMDU_anual_2025.pdf
Hash: 830436421a6e79e43c7d9427ffe6767786811dd5a42f3288fdbe6c409173e4d4
---


## Página 1

# Guía de Uso de Base de Datos ENEMDU

2021-2025

1

## Página 2

# GUIA DE USO DE BASE DE DATOS ENCUESTA NACIONAL DE EMPLEO, DESEMPLEO Y SUBEMPLEO ENEMDU – DICIEMBRE 2025 COORDINACIÓN GENERAL TÉCNICA DE PRODUCCIÓN ESTADÍSTICA

Valdivia Cecilia

# DIRECCIÓN DE ESTADISTICAS SOCIODEMOGRÁFICAS

Villalva Roxana

# GESTIÓN DE ESTADISTICAS PERMANENTES A HOGARES

Tipán Vladimir Defaz Juan

# RESPONSABLE NACIONAL ENEMDU

# ACTUALIZADO POR

Chico Marcos Chico Marcos Guzmán Johanna Edwin Narvaez Pacheco Evelyn Sagñay Brenda Santillán Iván Segarra David Tutin Fernanda

# EQUIPO TÉCNICO PLANTA CENTRAL

**Contacto:** inec@inec.gob.ec www.ecuadorencifras.gob.ec (02) 2234 164 · (02) 2235 890 · (02) 2526 072

2

## Página 3

# Contenido

**1 INTRODUCCIÓN** ........................................................................................................................................ 5

**2 Datos generales de la operación estadística** ...................................................................................... 7

**3 Homologación de base de datos** ......................................................................................................... 9

3.1 Base pivot y proceso de homologación ....................................................................................... 9

3.2 Secciones de la Encuesta Nacional de Empleo, Desempleo y Subempleo - ENEMDU ......... 15

3.3 Variables para crear identificadores únicos ............................................................................... 16

3.4 Variables derivadas ....................................................................................................................... 17

3.5 Tratamiento de valores perdidos, validaciones e imputaciones .............................................. 17

3.6 Clasificaciones y Nomenclaturas ................................................................................................. 18

3.7 Declaración del diseño muestral ................................................................................................. 19

**4 Anexos** .................................................................................................................................................... 21

# Lista de Tablas

Tabla 1 Información de la Encuesta Nacional de Empleo, Desempleo y Subempleo - ENEMDU..... 7 Tabla 2 Cambios en la pregunta 5: ¿(…) está afiliado o cubierto por:................................................ 9 Tabla 3 Cambios en la pregunta 9: ¿Cuál es la razón principal para que (…) no asista actualmente a la escuela, colegio o universidad? ............................................................................. 11 Tabla 4 Cambios en la pregunta 13: ¿Qué idioma(s) o lengua (s) hablan o hablaban los padres de (…)? ...................................................................................................................................................... 12 Tabla 5 Cambios en la pregunta 14: ¿Qué idioma (s) o lengua (s) habla (…)? ............................... 13 Tabla 6 Cambios en la pregunta 15: ¿Cómo se identifica según su cultura y costumbres? ........... 13 Tabla 7 Cambios en la pregunta 23: ¿Por qué razón no trabajó la semana pasada? .................... 13 Tabla 8 Cambios en la pregunta 34: ¿Por qué razón no buscó trabajo: ........................................... 14 Tabla 9 Cambios en la pregunta vi04: El material predominante del piso de la vivienda es: ......... 14 Tabla 10 Cambios en la pregunta vi10: ¿De dónde obtiene el agua principalmente este hogar: 15 Tabla 11 Cambios en la pregunta vi14: La vivienda que ocupa este hogar es: .............................. 15 Tabla 12 Variables identificadores únicos ............................................................................................. 16 Tabla 13 Variables derivadas .................................................................................................................. 17 Tabla 14 Códigos de no respuesta en la BDD ....................................................................................... 17 Tabla 15 Clasificaciones y nomenclaturas en la base ......................................................................... 18 Tabla 16 Variables requeridas para declaración del diseño muestral – ENEMDU ............................ 19

## Página 4

# 1

## Página 5

# 1 INTRODUCCIÓN

La Encuesta Nacional de Empleo, Desempleo y Subempleo – ENEMDU, es una encuesta por muestreo probabilístico, dirigida a los hogares ecuatorianos. Esta operación estadística forma parte del Sistema Integrado de Encuestas de Hogares (SIEH), y permite conocer la situación del mercado laboral ecuatoriano, las actividades económicas de los ecuatorianos y las fuentes de ingresos de la población. El Instituto Nacional de Estadística y Censos (INEC) periódicamente publica información estadística de mercado laboral, pobreza y desigualdad con fuente ENEMDU. Sin embargo, a lo largo del tiempo, las bases de datos de la ENEMDU han venido presentando cambios, debido a mejoras en el formulario de recolección de información. Por esta razón, es necesario homogenizar las bases de datos de esta investigación estadística, con la finalidad de que los usuarios puedan acceder y procesar la información con mayor facilidad. El proceso de homologación de bases de datos se enmarca en el Código de Buenas Prácticas Estadísticas, en el cual se establece que las entidades del Sistema Estadístico Nacional estandarizarán los métodos de producción, metodologías, conceptos, clasificaciones y nomenclaturas e instrumentos técnicos empleados para la producción de estadísticas oficiales, respondiendo a un proceso estadístico de calidad. Por otro lado, todos los procedimientos de la ENEMDU están sujetos al Modelo de Producción Estadística, que describe y define el conjunto de fases y procesos necesarios para producir estadísticas oficiales con altos estándares de calidad, útiles para los hacedores de política pública, sector privado, academia y, en general, de toda la ciudadanía. Así mismo, está alineado al Plan para el Fortalecimiento de Estadísticas del Trabajo 2018-2021, que busca brindar información relevante, como insumo para la planificación del país. Este documento tiene como objetivo primordial dar a conocer a los usuarios, los cambios que han sufrido las diferentes variables de la encuesta desde el 2007, año a partir del cual las estadísticas de esta fuente de información son comparables. Con esta guía, el usuario podrá analizar de mejor manera la información.

## Página 6

# 2

## Página 7

# 2 Datos generales de la operación estadística

## Tabla 1 Información de la Encuesta Nacional de Empleo, Desempleo y Subempleo -

ENEMDU


### Tabla

|  | Criterio |  |  | Descripción |  |
| --- | --- | --- | --- | --- | --- |
| Nombre de la operación |  |  | Encuesta Nacional de Empleo, Desempleo y Subempleo |  |  |
| Población Objetivo |  |  | Personas de 5 años y más de edad, residentes en los hogares del Ecuador, exceptuando la población que reside en viviendas colectivas, viviendas flotantes y sectores con población indigente |  |  |
| Unidad de observación |  |  | Todas las viviendas particulares ocupadas que se encuentran en territorio nacional |  |  |
| Unidad de análisis |  |  | Personas de 15 años y más |  |  |
| Cobertura geográfica |  |  | La cobertura de la ENEMDU es a nivel nacional, por área geográfica (urbano y rural) en todas las provincias del Ecuador. |  |  |
| Tipo de muestreo |  |  | El muestreo es probabilístico y bi-etápico; la Unidad Primaria de Muestreo (UPM) es el conglomerado y la Unidad Secundaria de Muestreo (USM) son las viviendas ocupadas |  |  |
| Desagregación de la información |  |  | La información que genera la ENEMDU diciembre 2020 se desagrega a nivel nacional y área de residencia (urbana y rural). Para las encuestas de diciembre desde 2007 a 2017 la información se desagrega también a nivel de provincias, y hasta el 2019 se desagrega por las 5 ciudades (Quito Guayaquil, Cuenca, Machala y Ambato.). |  |  |
| Comparabilidad de la serie histórica |  |  | La información estadística de la ENEMDU es comparable desde junio 2007. |  |  |


**Fuente** : Instituto Nacional de Estadística y Censos - INEC **Nota:** En caso de necesitar ampliación de los puntos revisados en la Tabla 1, remítase al documento metodológico de la operación estadística ( https://acortar.link/5P5Aoe ).

## Página 8

# 3

## Página 9

# 3 Homologación de base de datos

La homologación de las bases de datos consiste en homogenizar el nombre de variables y categorías de las bases de datos de personas y viviendas desde el año 2007, año desde donde existe información comparable de la ENEMDU. Para este proceso se tomó como guía o base pívot la base ENEMDU de septiembre 2018 1 (personas y vivienda-hogar); por lo tanto, las variables y categorías antes y después de este periodo se ajustarán a las bases de referencia. En las bases de personas se homologan únicamente las 4 secciones principales: características de los miembros del hogar, características ocupacionales, ingresos y datos de la vivienda y el hogar. Esta última sección se presenta como una base independiente, la base “vivienda-hogar” y para esta sección se homologan únicamente las variables que describen las características de la vivienda y el hogar. En el Anexo 1 se describe las bases que se homologan y el número de observaciones en cada periodo. El listado de variables en cada uno de los periodos se describe en el Anexo 2 para las bases de personas y en el Anexo 3 para las bases de vivienda-hogar. A continuación se describen los cambios que se han presentado en las categorías de las variables de las bases de datos. Existen tres tipos de cambios respecto a la base pivot:

# 3.1 Base pivot y proceso de homologación

a) No existen las categorías en la base homologada.- en estos casos se crea la

etiqueta de esas categorías para que guarde armonía con la base pivot, por ejemplo en la variable 05 entre junio 2007 y diciembre 2009 no existe la categoría “Seguro M.S.P”. Estos casos se resaltan en color verde. b) Categorías que cambian de numeración.- son categorías que no tienen la misma

numeración que la base pivot, por lo tanto estas se re-numeran con la finalidad de no afectar la numeración de las categorías de referencia. Estos casos se resaltan en color azul. c) No existen las categorías en la base pivot, pero si en la base homologada.- estos

casos se refieren a categorías que solo fueron investigadas en ciertos periodos, por lo tanto se las ubica al final de la numeración de las categorías de referencia (base pivot). Estos casos se resaltan en color gris.


### Tabla

|  | Base de referencia (sep18) |  |  |  | jun07 – dic09 |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  | Categorías de referencia |  |  |  | Categorías originales |  |  |  | Categorías homologadas |  |  |
| 1 |  | IESS, seguro general |  | 1 |  | IESS, seguro general |  | 1 |  | IESS, seguro general |  |
| 2 |  | IESS, seguro voluntario |  | 2 |  | IESS, seguro general voluntario |  | 2 |  | IESS, seguro voluntario |  |
| 3 |  | Seguro Campesino |  | 3 |  | IESS, seguro campesino |  | 3 |  | Seguro Campesino |  |
| 4 |  | Seguro del ISSFA o ISSPOL |  | 4 |  | Seguro del ISSFA o ISSPOL |  | 4 |  | Seguro del ISSFA o ISSPOL |  |
| 5 |  | Seguro privado con hospitalización |  | 5 |  | Seguro de salud privado con hospitalización |  | 5 |  | Seguro privado con hospitalización |  |
| 6 |  | Seguro privado sin hospitalización |  | 6 |  | Seguro de salud privado sin hospitalización |  | 6 |  | Seguro privado sin hospitalización |  |


hospitalización

1 Se consideró la base de septiembre 2018 como pivot, en vista de que esta era la última base disponible al momento de empezar a realizar este proceso

## Página 10

### Tabla

|  | Base de referencia (sep18) |  |  |  | jun07 – dic09 |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  | Categorías de referencia |  |  |  | Categorías originales |  |  |  |  |  | Categorías homologadas |  |  |  |  |
| 7 |  | AUS |  | 7 |  |  | AUS |  |  | 7 |  |  | AUS |  |  |
| 8 |  | Seguros Municipales y de Consejos Provinciales |  | 8 |  |  | Seguros Municipales y de Consejos Provinciales |  |  | 8 |  |  | Seguros Municipales y de Consejos Provinciales |  |  |
| 9 |  | Seguro M.S.P. |  |  | 9 |  |  | Ninguno |  |  | 9 |  |  | Seguro M.S.P. |  |
| 10 |  | Ninguno |  |  |  |  |  |  |  |  | 10 |  |  | Ninguno |  |


Consejos Provinciales 9 Seguro M.S.P. 9 Ninguno 9 Seguro M.S.P. 10 Ninguno 10 Ninguno **Fuente** : Instituto Nacional de Estadística y Censos – INEC - INEC categorías que no están en la base homologada, pero si en la base pivot. Entre junio 2007 y diciembre 2009 en la pregunta 5 no existe la categoría “Seguro del M.S.P”, por lo tanto se procede a renumerar la categoría “Ninguno” como “10” y se crea la etiqueta “Seguro del M.SP” en los periodos donde no existe. Esto no implica una reclasificación de las observaciones entre categorías, únicamente se incluye la etiqueta con la finalidad de que guarde consistencia con el número de categorías de la base de referencia.

## Nota: En celeste se muestra las categorías que cambian de numeración y en verde las

## Página 11

## Tabla 3 Cambios en la pregunta 9: ¿Cuál es la razón principal para que (…) no asista actualmente a la escuela, colegio o universidad?


### Tabla

|  | Base de referencia (sep18) |  |  |  | jun07 - dic08 |  |  |  |  |  |  |  |  |  | mar10 - dic13 |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  | Categorías de referencia |  |  |  | Categorías originales |  |  |  | Categorías homologadas |  |  |  |  |  | Categorías originales |  |  |  | Categorías homologadas |  |  |  |  |
| 1 |  | Edad |  | 1 |  | Edad |  | 1 |  |  | Edad |  |  | 1 |  | Edad |  | 1 |  |  | Edad |  |  |
| 2 |  | Terminó sus estudios |  | 2 |  | Terminó sus estudios |  | 2 |  |  | Terminó sus estudios |  |  | 2 |  | Terminó sus estudios |  | 2 |  |  | Terminó sus estudios |  |  |
| 3 |  | Falta de recursos económicos |  | 3 |  | Falta recursos económicos |  | 3 |  |  | Falta de recursos económicos |  |  | 3 |  | Falta recursos económicos |  | 3 |  |  | Falta de recursos económicos |  |  |
| 4 |  | Por fracaso escolar |  | 4 |  | Fracaso escolar |  | 4 |  |  | Por fracaso escolar |  |  | 4 |  | Fracaso escolar |  | 4 |  |  | Por fracaso escolar |  |  |
| 5 |  | Por trabajo |  | 5 |  | Por trabajo |  | 5 |  |  | Por trabajo |  |  | 5 |  | Por trabajo |  | 5 |  |  | Por trabajo |  |  |
| 6 |  | Por asistir a nivelación SENESCYT |  | 6 |  | Por temor a los maestros |  | 6 |  |  |  | Por asistir a nivelación |  | 6 |  | Por temor a los maestros |  | 6 |  |  |  | Por asistir a nivelación |  |
|  |  |  |  |  |  |  |  |  |  |  |  | SENESCYT |  |  |  |  |  |  |  |  |  | SENESCYT |  |
| 7 |  | Por enfermedad o discapacidad |  | 7 |  | Por enfermedad o discapacidad |  | 7 |  |  | Por enfermedad o discapacidad |  |  | 7 |  | Por enfermedad o discapacidad |  | 7 |  |  | Por enfermedad o discapacidad |  |  |
| 8 |  | Por ayudar en quehaceres del hogar |  | 8 |  | Por ayudar en quehaceres del hogar |  | 8 |  |  | Por ayudar en quehaceres del hogar |  |  | 8 |  | Por ayudar en quehaceres del hogar |  | 8 |  |  | Por ayudar en quehaceres del hogar |  |  |
| 9 |  | La familia no le permite estudiar |  | 9 |  | La familia no le permite estudiar |  | 9 |  |  | La familia no le permite estudiar |  |  | 9 |  | La familia no le permite estudiar |  | 9 |  |  | La familia no le permite estudiar |  |  |
| 10 |  | No hay establecimientos educación |  | 10 |  | No hay establecimientos educación |  | 10 |  |  | No hay establecimientos educación |  |  | 10 |  | No hay establecimientos educación |  | 10 |  |  | No hay establecimientos educación |  |  |
| 11 |  | No está interesado en estudiar |  | 11 |  | No está interesado en estudiar |  | 11 |  |  | No está interesado en estudiar |  |  | 11 |  | No está interesado en estudiar |  | 11 |  |  | No está interesado en estudiar |  |  |
| 12 |  | Por embarazo |  | 12 |  | Por embarazo |  | 12 |  |  | Por embarazo |  |  | 12 |  | Por embarazo |  | 12 |  |  | Por embarazo |  |  |
| 13 |  | Por falta de cupo |  | 13 |  | Otra, cuál |  |  | 13 |  |  | Por falta de cupo |  | 13 |  | Por falta de cupo |  | 13 |  |  | Por falta de cupo |  |  |
| 14 |  | Por temor a los compañeros |  |  |  |  |  | 14 |  |  | Por temor a los compañeros |  |  | 14 |  | Otra, cuál |  | 14 |  |  |  | Por temor a los |  |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | compañeros |  |
| 15 |  | Por cuidado de los hijos |  |  |  |  |  |  | 15 |  |  | Por cuidado de los hijos |  |  |  |  |  |  | 15 |  |  | Por cuidado de los hijos |  |
| 16 |  | Otra |  |  |  |  |  |  | 16 |  |  | Otra |  |  |  |  |  |  | 16 |  |  | Otra |  |
|  |  |  |  |  |  |  |  |  | 17 |  |  | Por temor a los maestros |  |  |  |  |  |  | 17 |  |  | Por temor a los maestros |  |


compañeros 15 Por cuidado de los hijos 15 Por cuidado de los hijos 15 Por cuidado de los hijos 16 Otra 16 Otra 16 Otra 17 Por temor a los maestros 17 Por temor a los maestros en la base pivot y en gris las categorías que no están en la base homologada pero si en la base pivot.

## Nota: En celeste se muestra las categorías que cambian de numeración, en verde las categorías que no están en la base homologada, pero si

11

## Página 12

### Tabla

|  | Base de referencia (sep18) |  | mar14 - dic15 |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  | Categorías de referencia |  | Categorías originales |  |  | Categorías homologadas |  |  |  |  |
| 1 |  | Edad | 1 | Edad | 1 |  |  | Edad |  |  |
| 2 |  | Terminó sus estudios | 2 | Terminó sus estudios | 2 |  |  | Terminó sus estudios |  |  |
| 3 |  | Falta de recursos económicos | 3 | Falta recursos económicos | 3 |  |  | Falta de recursos económicos |  |  |
| 4 |  | Por fracaso escolar | 4 | Fracaso escolar | 4 |  |  | Por fracaso escolar |  |  |
| 5 |  | Por trabajo | 5 | Por trabajo | 5 |  |  | Por trabajo |  |  |
| 6 |  | Por asistir a nivelación SENESCYT | 6 | Por asistir nivelación SENESCYT | 6 |  |  | Por asistir a nivelación SENESCYT |  |  |
| 7 |  | Por enfermedad o discapacidad | 7 | Enfermedad o discapacidad | 7 |  |  | Por enfermedad o discapacidad |  |  |
| 8 |  | Por ayudar en quehaceres del hogar | 8 | Por ayudar en quehaceres del hogar | 8 |  |  | Por ayudar en quehaceres del hogar |  |  |
| 9 |  | La familia no le permite estudiar | 9 | La familia no le permite estudiar | 9 |  |  | La familia no le permite estudiar |  |  |
| 10 |  | No hay establecimientos educación | 10 | No hay establecimientos educación | 10 |  |  | No hay establecimientos educación |  |  |
| 11 |  | No está interesado en estudiar | 11 | No está interesado en estudiar | 11 |  |  | No está interesado en estudiar |  |  |
| 12 |  | Por embarazo | 12 | Por embarazo | 12 |  |  | Por embarazo |  |  |
| 13 |  | Por falta de cupo | 13 | Por falta de cupo | 13 |  |  | Por falta de cupo |  |  |
| 14 |  | Por temor a los compañeros | 14 | Otra, cuál |  | 14 |  |  | Por temor a los compañeros |  |
| 15 |  | Por cuidado de los hijos |  |  |  | 15 |  |  | Por cuidado de los hijos |  |
| 16 |  | Otra |  |  |  | 16 |  |  | Otra |  |


12 Por embarazo 12 Por embarazo 12 Por embarazo 13 Por falta de cupo 13 Por falta de cupo 13 Por falta de cupo 14 Por temor a los compañeros 14 Otra, cuál 14 Por temor a los compañeros 15 Por cuidado de los hijos 15 Por cuidado de los hijos 16 Otra 16 Otra **Fuente** : Instituto Nacional de Estadística y Censos - INEC categorías que no están en la base homologada, pero si en la base pivot. En la pregunta 9 entre junio 2007 y diciembre 2013 investigó las categorías: “Por asistir a nivelación SENESCYT”, “Por falta de cupo”, “Por temor a los compañeros” y “Por cuidado de los hijos”; por lo tanto, para estos periodos se creó únicamente la etiqueta de las categorías. Además, en este periodo se investigó la categoría “Por temor a los maestros”, la cual no está en la base pivot. Es así, que esta categoría se numera como 17, y la opción “Otra” como 16. Finalmente, entre marzo 2014 y diciembre 2015 se renumeró la opción “Otra” y se creó las etiquetas de “Por temor a los compañeros” y “Por cuidado de los hijos”. De esta forma la pregunta 9 es homogénea en todos los periodos.

## Nota: En celeste se muestra las categorías que cambian de numeración y en verde las

padres de (…)?

## Tabla 4 Cambios en la pregunta 13: ¿Qué idioma(s) o lengua (s) hablan o hablaban los


### Tabla

|  | Base de referencia (sep18) |  | jun07 – mar10 |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  | Categorías de referencia |  | Categorías originales |  |  | Categorías homologadas |  |  |  |  |
| 1 |  | Sólo lengua indígena | 1 | Sólo lengua indígena |  | 1 |  | Sólo lengua indígena |  |  |
| 2 |  | Lengua indígena y castellano/español | 2 | Lengua indígena y español |  | 2 |  | Lengua indígena y castellano/español |  |  |
| 3 |  | Sólo castellano/español | 3 | Sólo español |  | 3 |  | Sólo castellano/español |  |  |
| 4 |  | Castellano/Español e idioma extranjero | 4 | Español e idioma extranjero |  | 4 |  | Castellano/Español e idioma extranjero |  |  |
| 5 |  | Lengua indígena e idioma extranjero | 5 | Lengua indígena e idioma extranjero |  | 5 |  | Lengua indígena e idioma extranjero |  |  |
| 6 |  | Idioma extranjero |  |  |  | 6 |  | I | dioma extranjero |  |
| 7 |  | No habla |  |  |  | 7 |  |  | No habla |  |


extranjero 6 Idioma extranjero 6 Idioma extranjero 7 No habla 7 No habla **Fuente** : Instituto Nacional de Estadística y Censos - INEC en la base pivot. Entre junio 2007 y marzo 2010 no se levantó las categorías “Idioma extranjero” y “No habla”; por lo tanto, para ese periodo se creó en la variable p13 las etiquetas de esas categorías.

## Nota: En verde se muestra las categorías que no están en la base homologada, pero si

12

## Página 13

## Tabla 5 Cambios en la pregunta 14: ¿Qué idioma (s) o lengua (s) habla (…)?


### Tabla

|  | Base de referencia (sep18) |  |  |  | jun07 - mar10 |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  | Categorías de referencia |  |  |  | Categorías originales |  |  | Categorías homologadas |  |  |  |
| 1 |  | Sólo lengua indígena |  | 1 |  | Sólo lengua indígena |  | 1 | Sólo lengua indígena |  |  |
| 2 |  | Lengua indígena y castellano/español |  | 2 |  | Lengua indígena y español |  | 2 | Lengua indígena y castellano/español |  |  |
| 3 |  | Sólo castellano/español |  | 3 |  | Sólo español |  | 3 | Sólo castellano/español |  |  |
| 4 |  | Castellano/Español e idioma extranjero |  | 4 |  | Español e idioma extranjero |  | 4 | Castellano/Español e idioma extranjero |  |  |
| 5 |  | Lengua indígena e idioma extranjero |  | 5 |  | Lengua indígena e idioma extranjero |  | 5 | Lengua indígena e idioma extranjero |  |  |
| 6 |  | Idioma extranjero |  |  |  |  |  | 6 |  | Idioma extranjero |  |
| 7 |  | No habla |  |  |  |  |  | 7 |  | No habla |  |


extranjero 6 Idioma extranjero 6 Idioma extranjero 7 No habla 7 No habla **Fuente** : Instituto Nacional de Estadística y Censos - INEC en la base pivot. De la misma forma, en la pregunta 14, entre junio 2007 y marzo 2010 no se levantó las categorías de “Idioma extranjero” y “No habla”, por lo que únicamente se creó las etiquetas de esas categorías.

## Nota: En verde se muestra las categorías que no están en la base homologada, pero si

## Tabla 6 Cambios en la pregunta 15: ¿Cómo se identifica según su cultura y costumbres ?


### Tabla

|  | Base de referencia (sep18) |  |  | jun07 - mar10 |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  | Categorías de referencia |  |  | Categorías originales |  | Categorías homologadas |  |  |  |
| 1 |  | Indígena |  | 1 | Indígena | 1 | Indígena |  |  |
| 2 |  | Afroecuatoriano/a |  | 2 | Blanco | 2 |  | Afroecuatoriano/a |  |
| 3 |  | Negro/a |  | 3 | Mestizo | 3 |  | Negro/a |  |
| 4 |  | Mulato/a |  | 4 | Negro | 4 |  | Mulato/a |  |
| 5 |  | Montubio/a |  | 5 | Mulato | 5 |  | Montubio/a |  |
| 6 |  | Mestizo/a |  | 6 | Otro, cuál? | 6 |  | Mestizo/a |  |
| 7 |  | Blanco/a |  |  |  | 7 |  | Blanco/a |  |
| 8 |  | Otro, cuál? |  |  |  | 8 |  | Otro, cuál? |  |


**Base de referencia (sep18)** **jun07 - mar10** **Categorías de referencia** **Categorías originales** **Categorías homologadas** 1 Indígena 1 Indígena 1 Indígena 2 Afroecuatoriano/a 2 Blanco 2 Afroecuatoriano/a 3 Negro/a 3 Mestizo 3 Negro/a 4 Mulato/a 4 Negro 4 Mulato/a 5 Montubio/a 5 Mulato 5 Montubio/a 6 Mestizo/a 6 Otro, cuál? 6 Mestizo/a 7 Blanco/a 7 Blanco/a 8 Otro, cuál? 8 Otro, cuál? **Fuente** : Instituto Nacional de Estadística y Censos - INEC categorías que no están en la base homologada, pero si en la base pivot. En la pregunta 15 entre junio 2007 y marzo 2010 no se levantó las categorías “Afroecuatoriano” y “Montubio/a”, por lo tanto en este periodo se creó las etiquetas de estas categorías y el resto de categorías se renumeraron para que guarden coherencia con las de la base pivot.

## Nota: En celeste se muestra las categorías que cambian de numeración y en verde las

## Tabla 7 Cambios en la pregunta 23: ¿Por qué razón no trabajó la semana pasada ? Nota: En gris se muestra las categorías que se unificaron en la base homologada.


### Tabla

|  | Base de referencia (sep18) |  |  |  | sep13 |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  | Categorías de referencia |  |  |  | Categorías originales |  |  | Categorías homologadas |  |  |
| 1 |  | Vacaciones |  | 1 |  | Vacaciones |  | 1 | Vacaciones |  |
| 2 |  | Enfermedad accidente |  | 2 |  | Enfermedad accidente |  | 2 | Enfermedad accidente |  |
| 3 |  | Huelga paro |  | 3 |  | Huelga paro |  | 3 | Huelga paro |  |
| 4 |  | Licencia con sueldo |  | 4 |  | Lic. con sueldo |  | 4 | Licencia con sueldo |  |
| 5 |  | Licencia sin sueldo |  | 5 |  | Lic. sin sueldo |  | 5 | Licencia sin sueldo |  |
| 6 |  | Suspensión temporal del trabajo |  | 6 |  | Suspensión temporal del trabajo |  | 6 | Suspensión temporal del trabajo |  |
| 7 |  | Otro |  |  | 7 |  | No quiso | 7 | Otro |  |
|  |  |  |  |  | 8 |  | Otro |  |  |  |


En septiembre 2013, en la pregunta 23 se levantó la categoría “No quiso”; sin embargo, en el resto de periodos antes y después de este año no se levantó. Por lo tanto, para que las categorías de esta pregunta se ajusten a las de la base pivot, se unificó las

## Página 14

opciones “No quiso” y “Otro” y a la categoría resultante de esta unión se la etiquetó como “Otro”.

## Tabla 8 Cambios en la pregunta 34: ¿Por qué razón no buscó trabajo:


### Tabla

|  | Base de referencia (sep18) |  | jun07 - dic07 |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  | Categorías de referencia |  | Categorías originales |  |  | Categorías homologadas |  |  |  |
| 1 |  | Tiene un trabajo esporádico u ocasional | 1 | Tiene un trabajo esporádico u ocasional |  | 1 | Tiene un trabajo esporádico u ocasional |  |  |
| 2 |  | Tiene trabajo para empezar inmediatamente | 2 | Tiene trabajo para empezar inmediatamente |  | 2 | Tiene trabajo para empezar inmediatamente |  |  |
| 3 |  | Espera respuesta a una gestión | 3 | Espera respuesta a una gestión |  | 3 | Espera respuesta a una gestión |  |  |
| 4 |  | Espera respuesta de un empleador | 4 | Espera respuesta de un empleador |  | 4 | Espera respuesta de un empleador |  |  |
| 5 |  | Espera cosecha o temporada de trabajo | 5 | Espera cosecha o temporada de trabajo |  | 5 | Espera cosecha o temporada de trabajo |  |  |
| 6 |  | Piensa que no le darán trabajo | 6 | Piensa que no le darán trabajo |  | 6 | Piensa que no le darán trabajo |  |  |
| 7 |  | No cree poder encontrar | 7 | No cree poder encontrar |  | 7 | No cree poder encontrar |  |  |
| 8 |  | No tiene necesidad o deseos de trabajar | 8 | Su cónyuge o su familia no le permiten |  | 8 |  | No tiene necesidad o deseos |  |
|  |  |  |  |  |  |  |  | de trabajar |  |
| 9 |  | No tiene tiempo | 9 | No tiene necesidad o deseos de trabajar |  | 9 | No tiene tiempo |  |  |
| 10 |  | Su cónyuge o su familia no le permiten | 10 | No tiene tiempo |  | 10 |  | Su cónyuge o su familia no le |  |
|  |  |  |  |  |  |  |  | permiten |  |
| 11 |  | Está enfermo/incapacitado | 11 | Está enfermo /incapacitado |  | 11 | Está enfermo/incapacitado |  |  |
| 12 |  | No está en edad de trabajar | 12 | No está en edad de trabajar |  | 12 | No está en edad de trabajar |  |  |


**Fuente** : Instituto Nacional de Estadística y Censos - INEC La pregunta 34 tiene el mismo número de categorías desde 2007 hasta la actualidad. Sin embargo, entre junio 2007 y diciembre 2007 las categorías “Su cónyuge o su familia no le permiten”, “No tiene necesidad o deseos de trabajar” y “No tiene tiempo” se levantaron en un orden distinto al de la base pivot, como se muestra en la Tabla 8; por lo tanto, estas categorías fueron renumeradas en estos periodos para que coincidan con la numeración de septiembre 2018. Para la base de vivienda-hogar a continuación se describen los cambios en las variables.

## Nota: En celeste se muestra las categorías que cambian de numeración.

## Tabla 9 Cambios en la pregunta vi04: El material predominante del piso de la vivienda es :


### Tabla

|  | Base de referencia (sep18) |  | dic07 - dic08 |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  | Categorías de referencia |  | Categorías originales |  |  |  | Categorías homologadas |  |  |  |
| 1 |  | Duela, parquet, tabloncillo, tablón tratado, piso flotante | 1 | Duela, parquet |  | 1 |  | Duela/ parquet/ tabloncillo/ tablón tratado/ piso flotante |  |  |
| 2 |  | Cerámica, baldosa, vinyl | 2 | Cerámica, baldosa, vinyl |  | 2 |  | Cerámica, baldosa, vinyl |  |  |
| 3 |  | Mármol, marmetón | 3 | Cemento, ladrillo |  |  | 3 |  | Mármol, marmetón |  |
| 4 |  | Cemento, ladrillo | 4 | Tabla, tablón no tratado |  |  | 4 |  | Cemento, ladrillo |  |
| 5 |  | Tabla, tablón no tratado | 5 | Caña |  |  | 5 |  | Tabla, tablón no tratado |  |
| 6 |  | Caña | 6 | Tierra |  |  | 6 |  | Caña |  |
| 7 |  | Tierra | 7 | Otro, cuál? |  |  | 7 |  | Tierra |  |
| 8 |  | Otro, cuál? |  |  |  |  | 8 |  | Otro, cuál? |  |

## Página 15

En la pregunta vi04a en los periodos diciembre 2007 y diciembre 2008 no se levantó la categoría “Mármol, marmetón”, por lo tanto se crea la etiqueta de esta categoría y se renumeran las demás categorías en concordancia a la base pivot.

este hogar:

## Tabla 10 Cambios en la pregunta vi10: ¿De dónde obtiene el agua principalmente


### Tabla

|  | Base de referencia (sep18) |  |  | dic07 - dic10 |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  | Categorías de referencia |  |  | Categorías originales |  | Categorías homologadas |  |  |
| 1 |  | Red pública |  | 1 | Red pública | 1 | Red pública |  |
| 2 |  | Pila o llave pública |  | 2 | Red pública o carro repartidor | 2 | Pila o llave pública |  |
| 3 |  | Otra fuente por tubería |  | 3 | Pila o llave pública | 3 | Otra fuente por tubería |  |
| 4 |  | Carro repartidor, triciclo |  | 4 | Otra fuente por tubería | 4 | Carro repartidor, triciclo |  |
| 5 |  | Pozo |  | 5 | Carro repartidor, triciclo | 5 | Pozo |  |
| 6 |  | Río, vertiente, acequia |  | 6 | Pozo | 6 | Río, vertiente, acequia |  |
| 7 |  | Otro, cuál? |  | 7 | Río, vertiente, acequia | 7 | Otro, cuál? |  |
|  |  |  |  | 8 | Agua de lluvia | 8 | Red pública o carro |  |
|  |  |  |  |  |  |  | repartidor |  |
|  |  |  |  | 9 | Otro, cuál? | 9 | Agua de lluvia |  |


repartidor 9 Otro, cuál? 9 Agua de lluvia **Fuente** : Instituto Nacional de Estadística y Censos - INEC categorías que están en la base homologada, pero no en la base pivot. Respecto a la pregunta vi10, entre diciembre 2007 y diciembre 2010 adicional a las categorías de la base pivot, se levantó las categorías “Red pública o carro repartidor” y “Agua de lluvia”. Por lo tanto, estas categorías ocupan la numeración 8 y 9 respectivamente, el resto de opciones se renumeraron conforme a las de la base pivot.

## Nota: En celeste se muestra las categorías que cambian de numeración y en gris las

## Tabla 11 Cambios en la pregunta vi14: La vivienda que ocupa este hogar es:


### Tabla

|  | Base de referencia (sep18) |  |  | dic07 - dic09 |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  | Categorías de referencia |  |  | Categorías originales |  | Categorías homologadas |  |  |
| 1 |  | En arriendo | 1 |  | En arriendo | 1 | En arriendo |  |
| 2 |  | Anticresis y/o arriendo | 2 |  | Propia y totalmente pagada | 2 | Anticresis y/o arriendo |  |
| 3 |  | Propia y la está pagando | 3 |  | Propia y la está pagando | 3 | Propia y la está pagando |  |
| 4 |  | Propia y totalmente pagada | 4 |  | Cedida | 4 | Propia y totalmente pagada |  |
| 5 |  | Cedida | 5 |  | Recibida por servicios | 5 | Cedida |  |
| 6 |  | Recibida por servicios | 6 |  | Otro cual | 6 | Recibida por servicios |  |
| 7 |  | Otro, cuál? |  |  |  | 7 | Otro, cuál? |  |


**Base de referencia (sep18)** **dic07 - dic09** **Categorías de referencia** **Categorías originales** **Categorías homologadas** 1 En arriendo 1 En arriendo 1 En arriendo 2 Anticresis y/o arriendo 2 Propia y totalmente pagada 2 Anticresis y/o arriendo 3 Propia y la está pagando 3 Propia y la está pagando 3 Propia y la está pagando 4 Propia y totalmente pagada 4 Cedida 4 Propia y totalmente pagada 5 Cedida 5 Recibida por servicios 5 Cedida 6 Recibida por servicios 6 Otro cual 6 Recibida por servicios 7 Otro, cuál? 7 Otro, cuál? **Fuente** : Instituto Nacional de Estadística y Censos - INEC categorías que no están en la base homologada, pero si en la base pivot. Entre diciembre 2007 y diciembre 2009 en la variable vi14 no se levantó la categoría “Anticresis y/o arriendo”, por lo tanto para este periodo se crea la etiqueta de la variable y el resto de categorías se renumera, excepto la opción “En arriendo”. La base de datos de personas de la Encuesta Nacional de Empleo, Desempleo y Subempleo - ENEMDU está compuesta principalmente de 3 secciones desde el año 2007 en adelante: (cod_inf).

## Nota: En celeste se muestra las categorías que cambian de numeración y en verde las

# 3.2 Secciones de la Encuesta Nacional de Empleo, Desempleo y Subempleo - ENEMDU

## • Características de los miembros del hogar: desde la pregunta 01 a la pregunta 19

## Página 16

• **Características ocupacionales:** desde la pregunta 20 hasta la pregunta 60. Dentro de esta sección existe una subsección que se compone de una única pregunta, la 61b1 (seguridad social), la cual ésta presente en las bases desde marzo 2017. • **Ingresos:** desde la pregunta 63 hasta la pregunta 78. Además de las secciones antes indicadas, en ciertos periodos existe información de otras temáticas. A continuación se enlista las secciones adicionales que existen en las bases de personas (En el Anexo 4 se detalla por periodo cada sección): • Participación en quehaceres domésticos • Migración • Crédito • Aspectos cualitativos de los desempleados • Cobertura de programas sociales • TIC’s • Esparcimiento y cultura • Capacitación y formación exclusiva para el trabajo • Inseguridad ciudadana • Características de los ocupados • Educación • Uso del tiempo • Información ambiental • Estabilidad laboral • Salud y seguridad • Capacitación laboral • Calidad de los Servicios Públicos Por su parte, en la base de vivienda principalmente se encuentra información de características de la vivienda y el hogar; no obstante, en algunos periodos también podrá encontrar información de equipamiento del hogar. En el Anexo 5 se detalla los periodos en los que se encuentra información de equipamiento del hogar. En la Tabla 12 se describe las variables identificadoras y cómo se componen cada una de ellas.

# 3.3 Variables para crear identificadores únicos

**Tabla 12** Variables identificadores únicos


### Tabla

|  | Periodo |  |  | Identificador |  |  | Descripción |  |  | Variables que lo componen |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| jun07 – sep17 |  |  | upm |  |  | Identificador de unidad primaria de muestreo |  |  | ciudad, zona, sector |  |  |
|  |  |  | id vivienda |  |  | Identificador de vivienda |  |  | ciudad, zona, sector, panel, vivienda |  |  |
|  |  |  | _ id hogar _ |  |  | Identificador de hogar |  |  | ciudad, zona, sector, panel, vivienda, hogar |  |  |
|  |  |  | id persona _ |  |  | Identificador de persona |  |  | ciudad, zona, sector, panel, vivienda, hogar, persona |  |  |
| dic17 en adelante |  |  | upm |  |  | Identificador de unidad primaria de muestreo |  |  | ciudad, conglomerado |  |  |
|  |  |  | id vivienda _ |  |  | Identificador de vivienda |  |  | ciudad, conglomerado, panel, vivienda |  |  |
|  |  |  | id hogar _ |  |  | Identificador de hogar |  |  | ciudad, conglomerado, panel, vivienda, hogar |  |  |
|  |  |  | id persona _ |  |  | Identificador de persona |  |  | ciudad, conglomerado, panel, vivienda, hogar, persona |  |  |


id_persona Identificador de persona ciudad, conglomerado, panel, vivienda, hogar, persona **Fuente** : Instituto Nacional de Estadística y Censos - INEC

## Página 17

# 3.4 Variables derivadas

Durante el procesamiento de la información de la operación estadística se obtienen variables y unidades que no fueron recopiladas o captadas directamente con el instrumento de recolección, pero que son necesarias para el cálculo de indicadores o productos requeridos. Para facilitar la comprensión de las variables y los datos contenidos en estas bases de datos, se han creado variables derivadas que se describen en la siguiente tabla:

## Tabla 13 Variables derivadas


### Tabla

| Nombre de la BDD |  | Variables |  | Método de cálculo |
| --- | --- | --- | --- | --- |
|  |  | derivadas |  |  |
| Base de personas | grupo 1 |  |  | Corresponde al grupo de ocupación CIUO-08 a un dígito, de la población ocupada |
|  | rama1 |  |  | Corresponde a la rama de actividad CIIU Rev.4 a un dígito, de la población ocupada |
|  | condact |  |  | Clasifica a la población en económicamente activa e inactiva |
|  | empleo |  |  | Comprende a las personas de 15 años y más que están ocupadas en el periodo de referencia |
|  | desempleo |  |  | Comprende a las personas de 15 años y más que están desempleadas en el periodo de referencia |
|  | secemp |  |  | Clasifica a la población ocupada en: sector formal, sector informal y empleo doméstico |
|  | ingrl |  |  | Corresponde al ingreso laboral de las personas con empleo |
|  | ingpc |  |  | Corresponde al ingreso per cápita del hogar |
|  | estrato |  |  | Divide a la población en estrato socioeconómico: alto, medio y bajo |
|  | rn |  |  | Regiones naturales del país |
|  | dominio |  |  | Dominios de la encuesta: Quito, Guayaquil, Cuenca, Machala, Ambato y resto del país |
|  | nnivins |  |  | Indica el nivel de instrucción de la población |
|  | prov |  |  | Provincias, solo para los meses de diciembre hasta 2017 |
|  | periodo |  |  | Indica el periodo al que corresponde la base de datos |
| Base de vivienda-hogar | periodo |  |  | Indica el periodo al que corresponde la base de datos |


dominio Dominios de la encuesta: Quito, Guayaquil, Cuenca, Machala, Ambato y resto del país nnivins Indica el nivel de instrucción de la población prov Provincias, solo para los meses de diciembre hasta 2017 periodo Indica el periodo al que corresponde la base de datos Base de vivienda-hogar periodo Indica el periodo al que corresponde la base de datos **Fuente** : Instituto Nacional de Estadística y Censos - INEC En diciembre 2020, las bases de datos no incluyen la variable “dominio” en razón que la encuesta no fue diseñada para proporcionar información a este nivel de desagregación. En la Encuesta Nacional de Empleo, Desempleo y Subempleo - ENEMDU, no se realiza ningún tipo de imputación a la información faltante o valores extremos. En la ENEMDU únicamente se asigna códigos a la “No respuesta”. A continuación, se describen los códigos utilizados en las bases de datos y las respectivas descripciones de los mismos para categorizar la ausencia de respuesta:

# 3.5 Tratamiento de valores perdidos, validaciones e imputaciones

## Tabla 14 Códigos de no respuesta en la BDD


### Tabla

|  | Nombre de la base |  |  | Pregunta |  |  | Código |  |  | Descripción |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Base de personas |  |  | p03 |  |  | 99 |  |  | No sabe |  |  |
|  |  |  | p63 |  |  | 999999 |  |  | No sabe, No informa, No contesta, No responde |  |  |
|  |  |  | p64b |  |  | 999999 |  |  | No sabe, No informa, No contesta, No responde |  |  |
|  |  |  | p65 |  |  | 999999 |  |  | No sabe, No informa, No contesta, No responde |  |  |
|  |  |  | p66 |  |  | 999999 |  |  | No sabe, No informa, No contesta, No responde |  |  |
|  |  |  | p67 |  |  | 999999 |  |  | No sabe, No informa, No contesta, No responde |  |  |

## Página 18

### Tabla

|  | Nombre de la base |  |  | Pregunta |  |  | Código |  |  | Descripción |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  |  |  | p68b |  |  | 999999 |  |  | No sabe, No informa, No contesta, No responde |  |  |
|  |  |  | p69 |  |  | 999999 |  |  | No sabe, No informa, No contesta, No responde |  |  |
|  |  |  | p70b |  |  | 999999 |  |  | No sabe, No informa, No contesta, No responde |  |  |
|  |  |  | p71b |  |  | 999999 |  |  | No sabe, No informa, No contesta, No responde |  |  |
|  |  |  | p72b |  |  | 999999 |  |  | No sabe, No informa, No contesta, No responde |  |  |
|  |  |  | p73b |  |  | 999999 |  |  | No sabe, No informa, No contesta, No responde |  |  |
|  |  |  | p74b |  |  | 999999 |  |  | No sabe, No informa, No contesta, No responde |  |  |
|  |  |  | p76 |  |  | 999999 |  |  | No sabe, No informa, No contesta, No responde |  |  |
|  |  |  | p78 |  |  | 999999 |  |  | No sabe, No informa, No contesta, No responde |  |  |
| Base de vivienda-hogar |  |  | vi15 |  |  | 99999 |  |  | No responde |  |  |


**Nombre de la base  Pregunta** **Código** **Descripción** p68b 999999 No sabe, No informa, No contesta, No responde p69 999999 No sabe, No informa, No contesta, No responde p70b 999999 No sabe, No informa, No contesta, No responde p71b 999999 No sabe, No informa, No contesta, No responde p72b 999999 No sabe, No informa, No contesta, No responde p73b 999999 No sabe, No informa, No contesta, No responde p74b 999999 No sabe, No informa, No contesta, No responde p76 999999 No sabe, No informa, No contesta, No responde p78 999999 No sabe, No informa, No contesta, No responde Base de vivienda-hogar vi15 99999 No responde **Fuente** : Instituto Nacional de Estadística y Censos – INEC En la siguiente tabla se enlistan las clasificaciones y nomenclaturas empleadas en la base de datos y se colocan las variables en las que se aplican, el periodo y la versión o revisión. Únicamente la Clasificación Industrial Internacional Uniforme de las Actividades Económicas (CIIU) y la Clasificación Internacional Uniforme de Ocupaciones (CIUO) fueron homologadas, de CIIU Rev. 3 a CIIU Rev. 4.0, 4.1 y de CIUO - 88 a CIUO - 08 respectivamente. Es decir, la variable “rama1” que se encuentre en las bases de datos desde 2007 en adelante, corresponde a la CIIU Rev. 4.0 y 4.1. Lo mismo con la variable “grupo1”, la cual corresponde al CIUO - 08 a un dígito desde 2007 en adelante.

# 3.6 Clasificaciones y Nomenclaturas

**Tabla 15** Clasificaciones y nomenclaturas en la base


### Tabla

|  | Nomenclaturas y clasificaciones |  | Periodo |  | Versión/ |  |  | Variables que aplican |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  | usadas |  |  |  | revisión |  |  | clasificador |  |
| Clasificación Industrial Internacional Uniforme de las Actividades Económicas (CIIU)(1) |  |  | 2007 en adelante | 4.0 y 4.1 |  |  | p40 y p52 |  |  |
| Clasificación Internacional Uniforme de Ocupaciones (CIUO) (2) |  |  | 2007 en adelante | 8 |  |  | p41 y p53 |  |  |
| División Político Administrativa(3) |  |  |  |  |  |  |  |  |  |
| División Política Administrativa |  |  | 2007 - 2013 | - |  |  | ciudad, p15ab, p17b |  |  |
| Clasificador Geográfico Estadístico |  |  | 2014 en adelante | - |  |  | ciudad, p15ab, p17b |  |  |
| Clasificación Nacional de Títulos Profesionales |  |  |  |  |  |  |  |  |  |
| Títulos Profesionales ENEMDU (Anexo 6) |  |  | 2007 a 2015 | - |  |  | p12 |  |  |
| Clasificación Nacional de Títulos Profesionales |  |  | Marzo 2016 en adelante | 1 |  |  | p12 |  |  |
| Códigos Uniformes de Países para uso Estadístico |  |  | Marzo 2015 en adelante | - |  |  | ciudad, p15ab, p17b |  |  |


**Fuente:** Instituto Nacional de Estadística y Censos - INEC (1) La Clasificación Industrial Internacional Uniforme de las Actividades Económicas desde 2007 a 2012 se utilizó la revisión 3, a partir de 2013 se utiliza la revisión 4. Sin embargo, en las bases de datos esta variable (rama1) se encuentra homologada a la revisión 4 y en el 2023, se utilizó a la revisión 4.1, para incluir la clasificación de la actividad de criptomonedas. (2) Clasificación Internacional Uniforme de Ocupaciones desde 2007 a 2012 se utilizó la 88, a partir de 2013 se utiliza la 08. Sin embargo, en las bases de datos esta variable (grupo1) se encuentra homologada a CIU-08. (3) Generalmente corresponde al clasificador actualizado a diciembre del año anterior. Nota: Para más información sobre las clasificaciones y nomenclaturas puede revisar la siguiente dirección: https://acortar.link/5P5Aoe

## Página 19

# 3.7 Declaración del diseño muestral

Las variables requeridas para declarar el diseño muestral en los programas estadísticos (SPSS, Stata y R) y realizar el cálculo de errores de muestreo, se presentan en la Tabla 16, allí se describe cada una de ellas 2 .

## Tabla 16 Variables requeridas para declaración del diseño muestral – ENEMDU


### Tabla

|  | Característica |  |  | Variable |  |  | Descripción |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Conglomerados |  |  | upm |  |  | Agrupación de viviendas ocupadas en un número entre 30 a 60, próximas entre sí y con límites definidos |  |  |
| Estratos |  |  | estrato |  |  | Identificación de estrato muestral (aproximación clasificación socio- económica) |  |  |
| Ponderación |  |  | fexp |  |  | Factor de expansión calculado y ajustado (no cobertura) |  |  |


**Estratos** estrato Identificación de estrato muestral (aproximación clasificación socio- económica) **Ponderación** fexp Factor de expansión calculado y ajustado (no cobertura) **Fuente** : Instituto Nacional de Estadística y Censos - INEC

2 Para mayor información remítase al documento “Cálculo de errores estándar y declaración de muestras complejas de la Encuesta Nacional de Empleo, Desempleo y Subempleo”, disponible en: https://acortar.link/5P5Aoe

## Página 20

# 4

## Página 21

# 4 Anexos

Anexo 1 Descripción de las bases de datos homologadas


### Tabla

| Periodo |  | Base de personas |  |  |  |  |  | Base de vivienda-hogar |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  |  | Información |  |  | Número de |  | Información levantada |  |  |  | Número de |  |
|  |  | levantada |  |  | observaciones |  |  |  |  |  | observaciones |  |
| Junio 2007 | x |  |  | 26.774 |  |  |  |  |  |  |  |  |
| Septiembre 2007 | x |  |  | 26.180 |  |  |  |  |  |  |  |  |
| Diciembre 2007 | x |  |  | 76.922 |  |  | x |  |  | 18.933 |  |  |
| Marzo 2008 | x |  |  | 26.161 |  |  |  |  |  |  |  |  |
| Junio 2008 | x |  |  | 37.869 |  |  |  |  |  |  |  |  |
| Septiembre 2008 | x |  |  | 26.339 |  |  |  |  |  |  |  |  |
| Diciembre 2008 | x |  |  | 78.742 |  |  | x |  |  | 19.394 |  |  |
| Marzo 2009 | x |  |  | 26.439 |  |  |  |  |  |  |  |  |
| Junio 2009 | x |  |  | 26.772 |  |  |  |  |  |  |  |  |
| Septiembre 2009 | x |  |  | 25.376 |  |  |  |  |  |  |  |  |
| Diciembre 2009 | x |  |  | 78.878 |  |  | x |  |  | 19.437 |  |  |
| Marzo 2010 | x |  |  | 24.958 |  |  |  |  |  |  |  |  |
| Junio 2010 | x |  |  | 79.232 |  |  |  |  |  |  |  |  |
| Septiembre 2010 | x |  |  | 25.584 |  |  |  |  |  |  |  |  |
| Diciembre 2010 | x |  |  | 82.774 |  |  | x |  |  | 20.677 |  |  |
| Marzo 2011 | x |  |  | 25.580 |  |  |  |  |  |  |  |  |
| Junio 2011 | x |  |  | 80.504 |  |  | x |  |  | 20.990 |  |  |
| Septiembre 2011 | x |  |  | 23.924 |  |  |  |  |  |  |  |  |
| Diciembre 2011 | x |  |  | 69.653 |  |  | x |  |  | 18.776 |  |  |
| Marzo 2012 | x |  |  | 23.496 |  |  |  |  |  |  |  |  |
| Junio 2012 | x |  |  | 71.183 |  |  | x |  |  | 18.536 |  |  |
| Septiembre 2012 | x |  |  | 23.200 |  |  |  |  |  |  |  |  |
| Diciembre 2012 | x |  |  | 73.686 |  |  | x |  |  | 19.840 |  |  |
| Marzo 2013 | x |  |  | 24.011 |  |  |  |  |  |  |  |  |
| Junio 2013 | x |  |  | 77.521 |  |  | x |  |  | 20.651 |  |  |
| Septiembre 2013 | x |  |  | 23.939 |  |  |  |  |  |  |  |  |
| Diciembre 2013 | x |  |  | 81.386 |  |  | x |  |  | 21.303 |  |  |
| Marzo 2014 | x |  |  | 58.711 |  |  | x |  |  | 15.307 |  |  |
| Junio 2014 | x |  |  | 115.298 |  |  | x |  |  | 30.416 |  |  |
| Septiembre 2014 | x |  |  | 59.312 |  |  | x |  |  | 15.705 |  |  |
| Diciembre 2014 | x |  |  | 116.505 |  |  | x |  |  | 30.365 |  |  |
| Marzo 2015 | x |  |  | 60.265 |  |  | x |  |  | 15.875 |  |  |
| Junio 2015 | x |  |  | 114.989 |  |  | x |  |  | 30.410 |  |  |
| Septiembre 2015 | x |  |  | 58.444 |  |  | x |  |  | 15.614 |  |  |
| Diciembre 2015 | x |  |  | 112.821 |  |  | x |  |  | 30.033 |  |  |
| Marzo 2016 | x |  |  | 57.951 |  |  | x |  |  | 15.544 |  |  |
| Junio 2016 | x |  |  | 57.997 |  |  | x |  |  | 15.474 |  |  |
| Septiembre 2016 | x |  |  | 59.354 |  |  | x |  |  | 15.750 |  |  |
| Diciembre 2016 | x |  |  | 114.086 |  |  | x |  |  | 30.338 |  |  |
| Marzo 2017 | x |  |  | 59.242 |  |  | x |  |  | 15.829 |  |  |
| Junio 2017 | x |  |  | 58.888 |  |  | x |  |  | 15.794 |  |  |
| Septiembre 2017 | x |  |  | 57.329 |  |  | x |  |  | 15.517 |  |  |
| Diciembre 2017 | x |  |  | 110.283 |  |  | x |  |  | 30.023 |  |  |
| Marzo 2018 | x |  |  | 59.348 |  |  | x |  |  | 16.594 |  |  |
| Junio 2018 | x |  |  | 59.958 |  |  | x |  |  | 16.732 |  |  |
| Septiembre 2018 | x |  |  | 59.736 |  |  | x |  |  | 16.781 |  |  |
| Diciembre 2018 | x |  |  | 59.350 |  |  | x |  |  | 16.736 |  |  |
| Marzo 2019 | x |  |  | 60.173 |  |  | x |  |  | 16.982 |  |  |
| Diciembre 2019 | x |  |  | 59.208 |  |  | x |  |  | 17.001 |  |  |
| Diciembre 2020 | x |  |  | 30.646 |  |  | x |  |  | 8.756 |  |  |
| Enero 2021 | x |  |  | 29.804 |  |  |  |  |  |  |  |  |
| Febrero 2021 | x |  |  | 29.523 |  |  |  |  |  |  |  |  |
| Marzo 2021 | x |  |  | 29.502 |  |  |  |  |  |  |  |  |
| Abril 2021 | x |  |  | 30.414 |  |  |  |  |  |  |  |  |
| Mayo 2021 | x |  |  | 30.339 |  |  |  |  |  |  |  |  |
| Junio 2021 | x |  |  | 30.598 |  |  |  |  |  |  |  |  |
| Julio 2021 | x |  |  | 29.925 |  |  |  |  |  |  |  |  |
| Agosto 2021 | x |  |  | 30.092 |  |  |  |  |  |  |  |  |
| Septiembre 2021 | x |  |  | 30.424 |  |  |  |  |  |  |  |  |

## Página 22

### Tabla

| Periodo |  | Base de personas |  |  |  |  |  | Base de vivienda-hogar |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  |  | Información |  |  | Número de |  | Información levantada |  |  |  | Número de |  |
|  |  | levantada |  |  | observaciones |  |  |  |  |  | observaciones |  |
| Octubre 2021 | x |  |  | 30.814 |  |  |  |  |  |  |  |  |
| Noviembre 2021 | x |  |  | 30.329 |  |  |  |  |  |  |  |  |
| Diciembre 2021 | x |  |  | 30.026 |  |  |  | x |  |  | 8.736 |  |
| Enero 2022 | x |  |  | 30.585 |  |  |  |  |  |  |  |  |
| Febrero 2022 | x |  |  | 30.087 |  |  | x |  |  | 8.807 |  |  |
| Marzo 2022 | x |  |  | 30.127 |  |  | x |  |  | 8.821 |  |  |
| Abril 2022 | x |  |  | 30.031 |  |  | x |  |  | 8.792 |  |  |
| Mayo 2022 | x |  |  | 29.641 |  |  | x |  |  | 8.839 |  |  |
| Junio 2022 | x |  |  | 29.734 |  |  | x |  |  | 8.830 |  |  |
| Julio 2022 | x |  |  | 30.210 |  |  | x |  |  | 8.937 |  |  |
| Agosto 2022 | x |  |  | 29.942 |  |  | x |  |  | 8.962 |  |  |
| Septiembre 2022 | x |  |  | 29.855 |  |  | x |  |  | 8.965 |  |  |
| Octubre 2022 | x |  |  | 29.722 |  |  | x |  |  | 8.864 |  |  |
| Noviembre 2022 | x |  |  | 29.169 |  |  | x |  |  | 8.857 |  |  |
| Diciembre 2022 | x |  |  | 28.993 |  |  | x |  |  | 8.852 |  |  |
| Enero 2023 | x |  |  |  | 29.216 |  | x |  |  |  | 8.879 |  |
| Febrero 2023 | x |  |  | 29.302 |  |  | x |  |  | 8.867 |  |  |
| Marzo 2023 | x |  |  | 28.881 |  |  | x |  |  | 8.834 |  |  |
| Abril 2023 | x |  |  | 28.851 |  |  | x |  |  | 8.809 |  |  |
| Mayo 2023 | x |  |  | 29.155 |  |  | x |  |  | 8.799 |  |  |
| Junio 2023 | x |  |  | 28.757 |  |  | x |  |  | 8.781 |  |  |
| Julio 2023 | x |  |  | 28.245 |  |  | x |  |  | 8.616 |  |  |
| Agosto 2023 | x |  |  | 28.680 |  |  | x |  |  | 8.689 |  |  |
| Septiembre 2023 | x |  |  | 28.575 |  |  | x |  |  | 8.684 |  |  |
| Octubre 2023 | x |  |  | 28.718 |  |  | x |  |  | 8.779 |  |  |
| Noviembre 2023 | x |  |  | 28.488 |  |  | x |  |  | 8.764 |  |  |
| Diciembre 2023 | x |  |  | 28.306 |  |  | x |  |  | 8.736 |  |  |
| Enero 2024 | x |  |  | 28.637 |  |  | x |  |  | 8.803 |  |  |
| Febrero 2024 | x |  |  | 28.689 |  |  | x |  |  | 8.803 |  |  |
| Marzo 2024 | x |  |  | 28.304 |  |  | x |  |  | 8.797 |  |  |
| Abril 2024 | x |  |  | 28.606 |  |  | x |  |  | 8.804 |  |  |
| Mayo 2024 | x |  |  | 28.432 |  |  | x |  |  | 8.727 |  |  |
| Junio 2024 | x |  |  | 28.670 |  |  | x |  |  | 8.796 |  |  |
| Julio 2024 | x |  |  | 28.696 |  |  | x |  |  | 8.931 |  |  |
| Agosto 2024 | x |  |  | 28.598 |  |  | x |  |  | 8.906 |  |  |
| Septiembre 2024 | x |  |  | 28.860 |  |  | x |  |  | 8.917 |  |  |
| Octubre 2024 | x |  |  | 28.028 |  |  | x |  |  | 8.792 |  |  |
| Noviembre 2024 | x |  |  | 28.264 |  |  | x |  |  | 8.773 |  |  |
| Diciembre 2024 | x |  |  | 27.610 |  |  | x |  |  | 8.726 |  |  |
| Enero 2025 | x |  |  | 28.320 |  |  | x |  |  | 8.795 |  |  |
| Febrero 2025 | x |  |  | 28.303 |  |  | x |  |  | 8.766 |  |  |
| Marzo 2025 | x |  |  | 27.932 |  |  | x |  |  | 8.790 |  |  |
| Abril 2025 | x |  |  | 28.092 |  |  | x |  |  | 8.810 |  |  |
| Mayo 2025 | x |  |  | 27.903 |  |  | x |  |  | 8.739 |  |  |
| Junio 2025 | x |  |  | 28.072 |  |  | x |  |  | 8.768 |  |  |
| Julio 2025 | x |  |  | 27.509 |  |  | x |  |  | 8.607 |  |  |
| Agosto 2025 | x |  |  | 27.580 |  |  | x |  |  | 8.607 |  |  |
| Septiembre 2025 | x |  |  | 27.332 |  |  | x |  |  | 8.584 |  |  |
| Octubre 2025 | x |  |  | 27.809 |  |  | x |  |  | 8.757 |  |  |
| Noviembre 2025 | x |  |  | 28.126 |  |  | x |  |  | 8.767 |  |  |
| Diciembre 2025 | x |  |  | 27.808 |  |  | x |  |  | 8.748 |  |  |

## Página 23

### Tabla

|  | Periodo |  |  | p01 |  |  | p02 |  |  | p03 |  |  | p04 |  |  | p05a |  |  | p05b |  |  | p06 |  |  | p07 |  |  | p08 |  |  | P081 |  |  | P085 |  |  | p09 |  |  | p10a |  |  | p10b |  |  | p11 |  |  | p12a |  |  | p12b |  |  | p13 |  |  | p14 |  |  | p15 |  |  | p15aa |  |  | p15ab |  |  | p16a |  |  | p16b |  |  | p17a |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Junio 2007 |  |  | x |  |  | x |  |  | X |  |  | X |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2007 |  |  | x |  |  | x |  |  | X |  |  | X |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2007 |  |  | x |  |  | x |  |  | X |  |  | X |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2008 |  |  | x |  |  | x |  |  | X |  |  | X |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2008 |  |  | x |  |  | x |  |  | X |  |  | X |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2008 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2008 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2009 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2009 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2009 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2009 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2010 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2010 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2010 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2010 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2011 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2011 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2011 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2011 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2012 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2012 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2012 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2012 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2013 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2013 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2013 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2013 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2014 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2014 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2014 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2014 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2015 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2015 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2015 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2015 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2016 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2016 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2016 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |


23

## Página 24

### Tabla

|  | Periodo |  |  | p01 |  |  | p02 |  |  | p03 |  |  | p04 |  |  | p05a |  |  | p05b |  |  | p06 |  |  | p07 |  |  | p08 |  |  | P081 |  |  | P085 |  |  | p09 |  |  | p10a |  |  | p10b |  |  | p11 |  |  | p12a |  |  | p12b |  |  | p13 |  |  | p14 |  |  | p15 |  |  | p15aa |  |  | p15ab |  |  | p16a |  |  | p16b |  |  | p17a |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Diciembre 2016 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2017 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2017 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2017 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2017 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2018 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2018 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2018 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2018 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2019 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2019 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2020 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2021 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2021 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2021 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2021 |  |  | x |  |  | x |  |  | X |  |  | X |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2021 |  |  | x |  |  | x |  |  | X |  |  | X |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2021 |  |  | x |  |  | x |  |  | X |  |  | X |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2021 |  |  | x |  |  | x |  |  | X |  |  | X |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2021 |  |  | x |  |  | x |  |  | X |  |  | X |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2021 |  |  | x |  |  | x |  |  | X |  |  | X |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2021 |  |  | x |  |  | x |  |  | X |  |  | X |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2021 |  |  | x |  |  | x |  |  | X |  |  | X |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2021 |  |  | x |  |  | x |  |  | X |  |  | X |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2022 |  |  | x |  |  | x |  |  | X |  |  | X |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2022 |  |  | x |  |  | x |  |  | X |  |  | X |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |


24

## Página 25

### Tabla

|  | Periodo | p01 |  |  | p02 |  | p | 03 |  |  | p04 |  |  | p05a |  |  | p05b |  |  | p06 |  |  | p07 |  |  | p08 |  | P081 |  | P085 |  | p09 |  | p10a |  |  | p10b |  |  | p11 |  |  | p12a |  |  | p12b |  |  | p13 |  |  | p14 |  |  | p15 |  |  | p15aa | p15ab |  | p16a |  |  | p16b |  |  | p17a |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Mayo 2023 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Junio 2023 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Julio 2023 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Agosto 2023 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Septiembre 2023 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Octubre 2023 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Noviembre 2023 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Diciembre 2023 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Enero 2024 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Febrero 2024 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Marzo 2024 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Abril 2024 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Mayo 2024 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Junio 2024 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Julio 2024 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Agosto 2024 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Septiembre 2024 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Octubre 2024 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Noviembre 2024 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Diciembre 2024 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Enero 2025 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Febrero 2025 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Marzo 2025 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Abril 2025 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Mayo 2025 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Junio 2025 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Julio 2025 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Agosto 2025 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Septiembre 2025 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Octubre 2025 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Noviembre 2025 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |
| Diciembre 2025 |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |



### Tabla

|  | Periodo | p17b |  |  | p18 |  | codinf _ |  |  | p20 |  |  | p21 |  |  | p22 |  |  | p23 |  |  | p232 |  | p233 |  | p24 |  | p25 |  | p26 |  |  | p27 |  |  | p28 |  |  | p29 |  |  | P29a |  |  | p30 |  |  | p31 |  |  | p32 |  |  | p33 |  |  | p34 | p35 |  | p36 |  |  | p37 |  |  | p38 |  |  | p39 |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Junio 2007 |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2007 |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  |  | x |  |  |


25

## Página 26

### Tabla

|  | Periodo |  |  | p17b |  |  | p18 |  | codinf _ |  |  | p20 |  |  | p21 |  |  | p22 |  |  | p23 |  |  | p232 |  |  | p233 |  |  | p24 |  |  | p25 |  |  | p26 |  |  | p27 |  |  | p28 |  |  | p29 |  |  | P29a |  |  | p30 |  |  | p31 |  |  | p32 |  |  | p33 |  |  | p34 |  |  | p35 |  |  | p36 |  |  | p37 |  |  | p38 |  |  | p39 |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Diciembre 2007 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2008 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2008 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2008 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2008 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2009 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2009 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2009 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2009 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2010 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2010 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2010 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2010 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2011 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2011 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2011 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2011 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2012 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2012 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2012 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2012 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2013 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2013 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2013 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2013 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2014 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2014 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2014 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2014 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2015 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2015 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2015 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2015 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2016 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2016 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2016 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2016 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2017 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2017 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2017 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |


26

## Página 27

### Tabla

|  | Periodo |  |  | p17b |  |  | p18 |  | codinf _ |  |  | p20 |  |  | p21 |  |  | p22 |  |  | p23 |  |  | p232 |  |  | p233 |  |  | p24 |  |  | p25 |  |  | p26 |  |  | p27 |  |  | p28 |  |  | p29 |  |  | P29a |  |  | p30 |  |  | p31 |  |  | p32 |  |  | p33 |  |  | p34 |  |  | p35 |  |  | p36 |  |  | p37 |  |  | p38 |  |  | p39 |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Diciembre 2017 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2018 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2018 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2018 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2018 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2019 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2019 |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2020 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Enero 2021 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Febrero 2021 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2021 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Abril 2021 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Mayo 2021 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2021 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Julio 2021 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Agosto 2021 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2021 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Octubre 2021 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Noviembre 2021 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2021 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Enero 2022 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Febrero 2022 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2022 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Abril 2022 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Mayo 2022 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2022 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Julio 2022 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Agosto 2022 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2022 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Octubre 2022 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Noviembre 2022 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2022 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Enero 2023 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Febrero 2023 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2023 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Abril 2023 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Mayo 2023 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2023 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Julio 2023 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Agosto 2023 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |


27

## Página 28

### Tabla

|  | Periodo |  | p17b |  |  | p18 |  | codin _ | f |  | p20 |  |  | p21 | p22 | p23 | p232 | p233 |  | p24 |  |  | p25 |  |  | p26 |  |  | p27 |  | p28 |  | p29 |  | P29a | p30 | p31 |  | p32 |  |  | p33 |  | p34 |  | p35 |  |  | p36 |  |  | p37 |  |  | p38 |  |  | p39 |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Septiembre 2023 |  |  |  |  |  |  | x |  |  | x |  |  | x |  | x | x | x | x |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x | x | x |  | x |  | x |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Octubre 2023 |  |  |  |  |  |  | x |  |  | x |  |  | x |  | x | x | x | x |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x | x | x |  | x |  | x |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Noviembre 2023 |  |  |  |  |  |  | x |  |  | x |  |  | x |  | x | x | x | x |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x | x | x |  | x |  | x |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2023 |  |  |  |  |  |  | x |  |  | x |  |  | x |  | x | x | x | x |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x | x | x |  | x |  | x |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Enero 2024 |  |  |  |  |  |  | x |  |  | x |  |  | x |  | x | x | x | x |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x | x | x |  | x |  | x |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Febrero 2024 |  |  |  |  |  |  | x |  |  | x |  |  | x |  | x | x | x | x |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x | x | x |  | x |  | x |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2024 |  |  |  |  |  |  | x |  |  | x |  |  | x |  | x | x | x | x |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x | x | x |  | x |  | x |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Abril 2024 |  |  |  |  |  |  | x |  |  | x |  |  | x |  | x | x | x | x |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x | x | x |  | x |  | x |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Mayo 2024 |  |  |  |  |  |  | x |  |  | x |  |  | x |  | x | x | x | x |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x | x | x |  | x |  | x |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2024 |  |  |  |  |  |  | x |  |  | x |  |  | x |  | x | x | x | x |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x | x | x |  | x |  | x |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Julio 2024 |  |  |  |  |  |  | x |  |  | x |  |  | x |  | x | x | x | x |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x | x | x |  | x |  | x |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Agosto 2024 |  |  |  |  |  |  | x |  |  | x |  |  | x |  | x | x | x | x |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x | x | x |  | x |  | x |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2024 |  |  |  |  |  |  | x |  |  | x |  |  | x |  | x | x | x | x |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x | x | x |  | x |  | x |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Octubre 2024 |  |  |  |  |  |  | x |  |  | x |  |  | x |  | x | x | x | x |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x | x | x |  | x |  | x |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Noviembre 2024 |  |  |  |  |  |  | x |  |  | x |  |  | x |  | x | x | x | x |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x | x | x |  | x |  | x |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2024 |  |  |  |  |  |  | x |  |  | x |  |  | x |  | x | x | x | x |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x | x | x |  | x |  | x |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Enero 2025 |  |  |  |  |  |  | x |  |  | x |  |  | x |  | x | x | x | x |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x | x | x |  | x |  | x |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Febrero 2025 |  |  |  |  |  |  | x |  |  | x |  |  | x |  | x | x | x | x |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x | x | x |  | x |  | x |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2025 |  |  |  |  |  |  | x |  |  | x |  |  | x |  | x | x | x | x |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x | x | x |  | x |  | x |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Abril 2025 |  |  |  |  |  |  | x |  |  | x |  |  | x |  | x | x | x | x |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x | x | x |  | x |  | x |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Mayo 2025 |  |  |  |  |  |  | x |  |  | x |  |  | x |  | x | x | x | x |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x | x | x |  | x |  | x |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2025 |  |  |  |  |  |  | x |  |  | x |  |  | x |  | x | x | x | x |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x | x | x |  | x |  | x |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Julio 2025 |  |  |  |  |  |  | x |  |  | x |  |  | x |  | x | x | x | x |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x | x | x |  | x |  | x |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Agosto 2025 |  |  |  |  |  |  | x |  |  | x |  |  | x |  | x | x | x | x |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x | x | x |  | x |  | x |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2025 |  |  |  |  |  |  | x |  |  | x |  |  | x |  | x | x | x | x |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x | x | x |  | x |  | x |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Octubre 2025 |  |  |  |  |  |  | x |  |  | x |  |  | x |  | x | x | x | x |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x | x | x |  | x |  | x |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Noviembre 2025 |  |  |  |  |  |  | x |  |  | x |  |  | x |  | x | x | x | x |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x | x | x |  | x |  | x |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2025 |  |  |  |  |  |  | x |  |  | x |  |  | x |  | x | x | x | x |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x | x | x |  | x |  | x |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  |



### Tabla

|  | Periodo |  | p40 |  |  | p41 |  |  | p42 |  |  | P421 |  |  | P422 | p42a | p43 | p44a | p44b |  | p44c |  |  | p44d |  |  | p44e |  | p44f |  | p44g |  | p44h | p44i | p44j |  | p44k |  |  | p45 |  | p46 |  | p47a |  |  | p47b |  |  | p48 |  |  | p49 |  |  | p50 |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Junio 2007 |  |  | x |  | x |  |  | X |  |  |  |  |  |  |  |  | x | x | x | x |  |  | x |  |  | x |  |  | x |  | x |  | x | x |  |  |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2007 |  |  | x |  | x |  |  | X |  |  |  |  |  |  |  |  | x | x | x | x |  |  | x |  |  | x |  |  | x |  | x |  | x | x |  |  |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2007 |  |  | x |  | x |  |  | X |  |  |  |  |  |  |  |  | x | x | x | x |  |  | x |  |  | x |  |  | x |  | x |  | x | x |  |  |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2008 |  |  | x |  | x |  |  | X |  |  |  |  |  |  |  |  | x | x | x | x |  |  | x |  |  | x |  |  | x |  | x |  | x | x |  |  |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2008 |  |  | x |  | x |  |  | X |  |  |  |  |  |  |  |  | x | x | x | x |  |  | x |  |  | x |  |  | x |  | x |  | x | x |  |  |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2008 |  |  | x |  | x |  |  | X |  |  |  |  |  |  |  |  | x | x | x | x |  |  | x |  |  | x |  |  | x |  | x |  | x | x |  |  |  |  | x |  | x |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |


28

## Página 29

### Tabla

|  | Periodo |  |  | p40 |  |  | p41 |  |  | p42 |  |  | P421 |  |  | P422 |  |  | p42a |  |  | p43 |  |  | p44a |  |  | p44b |  |  | p44c |  |  | p44d |  |  | p44e |  |  | p44f |  |  | p44g |  |  | p44h |  |  | p44i |  |  | p44j |  |  | p44k |  |  | p45 |  |  | p46 |  |  | p47a |  |  | p47b |  |  | p48 |  |  | p49 |  |  | p50 |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Diciembre 2008 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2009 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2009 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2009 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2009 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2010 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2010 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2010 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2010 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2011 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2011 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2011 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2011 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2012 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2012 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2012 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2012 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2013 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2013 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2013 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2013 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2014 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2014 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2014 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2014 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2015 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2015 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2015 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2015 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2016 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2016 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2016 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2016 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2017 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2017 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2017 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2017 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2018 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2018 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2018 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |


29

## Página 30

### Tabla

|  | Periodo |  |  | p40 |  |  | p41 |  |  | p42 |  |  | P421 |  |  | P422 |  |  | p42a |  |  | p43 |  |  | p44a |  |  | p44b |  |  | p44c |  |  | p44d |  |  | p44e |  |  | p44f |  |  | p44g |  |  | p44h |  |  | p44i |  |  | p44j |  |  | p44k |  |  | p45 |  |  | p46 |  |  | p47a |  |  | p47b |  |  | p48 |  |  | p49 |  |  | p50 |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Diciembre 2018 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2019 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2019 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2020 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Enero 2021 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Febrero 2021 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2021 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Abril 2021 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Mayo 2021 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2021 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Julio 2021 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Agosto 2021 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2021 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Octubre 2021 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Noviembre 2021 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2021 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Enero 2022 |  |  | x |  |  | x |  |  | X |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Febrero 2022 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Abril 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Mayo 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Julio 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Agosto 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Octubre 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Noviembre 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Enero 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Febrero 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Abril 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Mayo 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Julio 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Agosto 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Octubre 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Noviembre 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |


30

## Página 31

### Tabla

|  | Periodo |  | p40 |  | p41 |  |  | p42 |  |  | P421 |  |  | P422 |  | p42a |  |  | p43 |  |  | p44a |  | p44b |  | p44c |  |  | p44d |  | p44e |  |  | p44f | p44g | p44h |  |  | p44i |  |  | p44j |  |  | p44k |  |  | p45 |  | p46 | p47a | p47b | p48 |  | p49 |  |  | p50 |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Enero 2024 |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x | x | x |  | x |  | x |  |  |
| Febrero 2024 |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x | x | x |  | x |  | x |  |  |
| Marzo 2024 |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x | x | x |  | x |  | x |  |  |
| Abril 2024 |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x | x | x |  | x |  | x |  |  |
| Mayo 2024 |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x | x | x |  | x |  | x |  |  |
| Junio 2024 |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x | x | x |  | x |  | x |  |  |
| Julio 2024 |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x | x | x |  | x |  | x |  |  |
| Agosto 2024 |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x | x | x |  | x |  | x |  |  |
| Septiembre 2024 |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x | x | x |  | x |  | x |  |  |
| Octubre 2024 |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x | x | x |  | x |  | x |  |  |
| Noviembre 2024 |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x | x | x |  | x |  | x |  |  |
| Diciembre 2024 |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x | x | x |  | x |  | x |  |  |
| Enero 2025 |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x | x | x |  | x |  | x |  |  |
| Febrero 2025 |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x | x | x |  | x |  | x |  |  |
| Marzo 2025 |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x | x | x |  | x |  | x |  |  |
| Abril 2025 |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x | x | x |  | x |  | x |  |  |
| Mayo 2025 |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x | x | x |  | x |  | x |  |  |
| Junio 2025 |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x | x | x |  | x |  | x |  |  |
| Julio 2025 |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x | x | x |  | x |  | x |  |  |
| Agosto 2025 |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x | x | x |  | x |  | x |  |  |
| Septiembre 2025 |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x | x | x |  | x |  | x |  |  |
| Octubre 2025 |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x | x | x |  | x |  | x |  |  |
| Noviembre 2025 |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x | x | x |  | x |  | x |  |  |
| Diciembre 2025 |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  | x |  | x |  |  | x |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x | x | x |  | x |  | x |  |  |



### Tabla

|  | Periodo |  | p51a |  | p51b |  |  | p51c |  |  | p52 |  |  | p53 |  | p54 |  |  | p54a |  |  | p55 |  | p56a |  | p56b |  |  | p57 |  | p58 |  |  | p59 | p60a | p60b |  |  | p60c |  |  | p60d |  |  | p60e |  | p60f | p60g | p60h | p60i |  | p60j |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Junio 2007 |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  |  |  |  | X |  | x |  | x |  |  | x |  | x |  |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x | x | x | x | x |  |  |
| Septiembre 2007 |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  |  |  |  | X |  | x |  | x |  |  | x |  | x |  |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x | x | x | x | x |  |  |
| Diciembre 2007 |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  |  |  |  | X |  | x |  | x |  |  | x |  | x |  |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x | x | x | x | x |  |  |
| Marzo 2008 |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  |  |  |  | X |  | x |  | x |  |  | x |  | x |  |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x | x | x | x | x |  |  |
| Junio 2008 |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  |  |  |  | X |  | x |  | x |  |  | x |  | x |  |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x | x | x | x | x |  |  |
| Septiembre 2008 |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  |  |  |  | X |  | x |  | x |  |  | x |  | x |  |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x | x | x | x | x |  |  |
| Diciembre 2008 |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  |  |  |  | X |  | x |  | x |  |  | x |  | x |  |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x | x | x | x | x |  |  |
| Marzo 2009 |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  |  |  |  | X |  | x |  | x |  |  | x |  | x |  |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x | x | x | x | x |  |  |
| Junio 2009 |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  |  |  |  | X |  | x |  | x |  |  | x |  | x |  |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x | x | x | x | x |  |  |
| Septiembre 2009 |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  |  |  |  | X |  | x |  | x |  |  | x |  | x |  |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x | x | x | x | x |  |  |
| Diciembre 2009 |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  |  |  |  | X |  | x |  | x |  |  | x |  | x |  |  | x |  | x | x |  | x |  |  | x |  |  | x |  |  | x | x | x | x | x |  |  |


31

## Página 32

### Tabla

|  | Periodo |  |  | p51a |  |  | p51b |  |  | p51c |  |  | p52 |  |  | p53 |  |  | p54 |  |  | p54a |  |  | p55 |  |  | p56a |  |  | p56b |  |  | p57 |  |  | p58 |  |  | p59 |  |  | p60a |  |  | p60b |  |  | p60c |  |  | p60d |  |  | p60e |  |  | p60f |  |  | p60g |  |  | p60h |  |  | p60i |  |  | p60j |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Marzo 2010 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2010 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2010 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2010 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2011 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2011 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2011 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2011 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2012 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2012 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2012 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2012 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2013 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2013 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2013 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2013 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2014 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2014 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2014 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2014 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2015 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2015 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2015 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2015 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2016 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2016 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2016 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2016 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2017 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2017 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2017 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2017 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2018 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2018 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2018 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2018 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2019 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2019 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2020 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Enero 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |


32

## Página 33

### Tabla

|  | Periodo |  |  | p51a |  |  | p51b |  |  | p51c |  |  | p52 |  |  | p53 |  |  | p54 |  |  | p54a |  |  | p55 |  |  | p56a |  |  | p56b |  |  | p57 |  |  | p58 |  |  | p59 |  |  | p60a |  |  | p60b |  |  | p60c |  |  | p60d |  |  | p60e |  |  | p60f |  |  | p60g |  |  | p60h |  |  | p60i |  |  | p60j |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Febrero 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Abril 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Mayo 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Julio 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Agosto 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Octubre 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2024 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2024 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2024 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2024 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2024 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |


33

## Página 34

### Tabla

|  | Periodo | p51a |  | p51b |  |  | p51c | p52 |  | p53 |  |  | p54 |  |  | p54a |  | p55 | p56a | p56b |  |  | p57 | p58 |  | p59 |  |  | p60a |  |  | p60b |  |  | p60c |  | p60d |  | p60e |  | p60f |  |  | p60g |  | p60h |  | p60i | p60j |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Junio 2024 |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x | x | x |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2024 |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x | x | x |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2024 |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x | x | x |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2024 |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x | x | x |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2024 |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x | x | x |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2024 |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x | x | x |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2024 |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x | x | x |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2025 |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x | x | x |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2025 |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x | x | x |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2025 |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x | x | x |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2025 |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x | x | x |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2025 |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x | x | x |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2025 |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x | x | x |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2025 |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x | x | x |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2025 |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x | x | x |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2025 |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x | x | x |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2025 |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x | x | x |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2025 |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x | x | x |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2025 |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  | x | x | x |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |



### Tabla

|  | Periodo | p60k |  | p61b1 |  |  | p63 | p64a |  | p64b |  |  | p65 |  |  | p66 |  | p67 | p68a | p68b |  |  | p69 | p70a |  | p70b |  |  | p71a |  |  | p71b |  |  | p72a |  | p72b |  | p73a |  | p73b |  |  | p74a |  | p74b |  | p75 | p76 |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Junio 2007 |  | x |  |  |  | x |  | x | x |  |  | x |  |  | x |  | X |  | x | x |  | x |  | x | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |
| Septiembre 2007 |  | x |  |  |  | x |  | x | x |  |  | x |  |  | x |  | X |  | x | x |  | x |  | x | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |
| Diciembre 2007 |  | x |  |  |  | x |  | x | x |  |  | x |  |  | x |  | X |  | x | x |  | x |  | x | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |
| Marzo 2008 |  | x |  |  |  | x |  | x | x |  |  | x |  |  | x |  | X |  | x | x |  | x |  | x | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |
| Junio 2008 |  | x |  |  |  | x |  | x | x |  |  | x |  |  | x |  | X |  | x | x |  | x |  | x | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |
| Septiembre 2008 |  | x |  |  |  | x |  | x | x |  |  | x |  |  | x |  | X |  | x | x |  | x |  | x | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |
| Diciembre 2008 |  | x |  |  |  | x |  | x | x |  |  | x |  |  | x |  | X |  | x | x |  | x |  | x | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |
| Marzo 2009 |  | x |  |  |  | x |  | x | x |  |  | x |  |  | x |  | X |  | x | x |  | x |  | x | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |
| Junio 2009 |  | x |  |  |  | x |  | x | x |  |  | x |  |  | x |  | X |  | x | x |  | x |  | x | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |
| Septiembre 2009 |  | x |  |  |  | x |  | x | x |  |  | x |  |  | x |  | X |  | x | x |  | x |  | x | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |
| Diciembre 2009 |  | x |  |  |  | x |  | x | x |  |  | x |  |  | x |  | X |  | x | x |  | x |  | x | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |
| Marzo 2010 |  | x |  |  |  | x |  | x | x |  |  | x |  |  | x |  | X |  | x | x |  | x |  | x | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |
| Junio 2010 |  | x |  |  |  | x |  | x | x |  |  | x |  |  | x |  | X |  | x | x |  | x |  | x | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |
| Septiembre 2010 |  | x |  |  |  | x |  | x | x |  |  | x |  |  | x |  | X |  | x | x |  | x |  | x | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |
| Diciembre 2010 |  | x |  |  |  | x |  | x | x |  |  | x |  |  | x |  | X |  | x | x |  | x |  | x | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |


34

## Página 35

### Tabla

|  | Periodo |  |  | p60k |  |  | p61b1 |  |  | p63 |  |  | p64a |  |  | p64b |  |  | p65 |  |  | p66 |  |  | p67 |  |  | p68a |  |  | p68b |  |  | p69 |  |  | p70a |  |  | p70b |  |  | p71a |  |  | p71b |  |  | p72a |  |  | p72b |  |  | p73a |  |  | p73b |  |  | p74a |  |  | p74b |  |  | p75 |  |  | p76 |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Marzo 2011 |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2011 |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2011 |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2011 |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2012 |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2012 |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2012 |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2012 |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2013 |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2013 |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2013 |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2013 |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2014 |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2014 |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2014 |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2014 |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2015 |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2015 |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2015 |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2015 |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2016 |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2016 |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2016 |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2016 |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2017 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2017 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2017 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2017 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2018 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2018 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2018 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2018 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2019 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2019 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2020 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Enero 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Febrero 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Abril 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Mayo 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |


35

## Página 36

### Tabla

|  | Periodo |  |  | p60k |  |  | p61b1 |  |  | p63 |  |  | p64a |  |  | p64b |  |  | p65 |  |  | p66 |  |  | p67 |  |  | p68a |  |  | p68b |  |  | p69 |  |  | p70a |  |  | p70b |  |  | p71a |  |  | p71b |  |  | p72a |  |  | p72b |  |  | p73a |  |  | p73b |  |  | p74a |  |  | p74b |  |  | p75 |  |  | p76 |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Junio 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Julio 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Agosto 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Octubre 2021 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Noviembre 2021 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2021 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Enero 2022 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Febrero 2022 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2022 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Abril 2022 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Mayo 2022 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2022 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Julio 2022 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Agosto 2022 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2022 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Octubre 2022 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Noviembre 2022 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2022 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Enero 2023 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Febrero 2023 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2023 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Abril 2023 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Mayo 2023 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2023 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Julio 2023 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Agosto 2023 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2023 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Octubre 2023 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Noviembre 2023 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2023 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Enero 2024 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Febrero 2024 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2024 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Abril 2024 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Mayo 2024 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2024 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Julio 2024 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Agosto 2024 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2024 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |


36

## Página 37

### Tabla

|  | Periodo |  |  | p60k |  | p61b1 |  |  | p63 |  |  | p64a |  |  | p64b |  |  | p65 |  |  | p66 |  |  | p67 |  | p68a |  |  | p68b |  |  | p69 |  |  | p70a |  | p70b |  | p71a | p71b |  |  | p72a |  | p72b |  | p73a |  | p73b |  | p74a |  | p74b |  |  | p75 |  |  | p76 |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Octubre 2024 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  |
| Noviembre 2024 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  |
| Diciembre 2024 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  |
| Enero 2025 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  |
| Febrero 2025 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  |
| Marzo 2025 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  |
| Abril 2025 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  |
| Mayo 2025 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  |
| Junio 2025 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  |
| Julio 2025 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  |
| Agosto 2025 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  |
| Septiembre 2025 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  |
| Octubre 2025 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  |
| Noviembre 2025 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  |
| Diciembre 2025 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | X |  | x |  |  | x |  |  | x |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  |


Anexo 2F Preguntas de la base de personas **Periodo** **p77** **p78** **sd01 sd021** **sd022** **sd023** **sd024** **sd025** **sd026** **sd027** **sd028** **sd029** **sd0210** **sd0211** **sd03** **sp01** **sp02a** **sp02b** **sp02c** **sp02d** **sp02e**


### Tabla

|  | Periodo |  | p77 |  |  | p78 |  |  | sd01 |  |  | sd021 |  |  | sd022 |  |  | sd023 |  |  | sd024 |  | sd025 |  |  | sd026 |  |  | sd027 |  |  | sd028 |  | sd029 |  | sd0210 | sd0211 |  |  | sd03 |  | sp01 |  | sp02a |  | sp02b |  | sp02c |  | sp02d |  |  | sp02e |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Junio 2007 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2007 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2007 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2008 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2008 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2008 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2008 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2009 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2009 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2009 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2009 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2010 |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  |  | x |  |  | x |  | x | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2010 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |


37

## Página 38

### Tabla

|  | Periodo |  |  | p77 |  |  | p78 |  |  | sd01 |  |  | sd021 |  |  | sd022 |  |  | sd023 |  |  | sd024 |  |  | sd025 |  |  | sd026 |  |  | sd027 |  |  | sd028 |  |  | sd029 |  |  | sd0210 |  |  | sd0211 |  |  | sd03 |  |  | sp01 |  |  | sp02a |  |  | sp02b |  |  | sp02c |  |  | sp02d |  |  | sp02e |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Septiembre 2010 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2010 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2011 |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2011 |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2011 |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2011 |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2012 |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2012 |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2012 |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2012 |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2013 |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2013 |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2013 |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2013 |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2014 |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2014 |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2014 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2014 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2015 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2015 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2015 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2015 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2016 |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2016 |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2016 |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2016 |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2017 |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2017 |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2017 |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2017 |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2018 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2018 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2018 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2018 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2019 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2019 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2020 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |


38

## Página 39

### Tabla

|  | Periodo |  |  | p77 |  |  | p78 |  |  | sd01 |  |  | sd021 |  |  | sd022 |  |  | sd023 |  |  | sd024 |  |  | sd025 |  |  | sd026 |  |  | sd027 |  |  | sd028 |  |  | sd029 |  |  | sd0210 |  |  | sd0211 |  |  | sd03 |  |  | sp01 |  |  | sp02a |  |  | sp02b |  |  | sp02c |  |  | sp02d |  |  | sp02e |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Marzo 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2021 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Julio 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Agosto 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Octubre 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Noviembre 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Enero 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Febrero 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Abril 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Mayo 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2024 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2024 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2024 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2024 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2024 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2024 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |


39

## Página 40

### Tabla

|  | Periodo |  |  | p77 |  |  | p78 |  |  | sd01 |  |  | sd021 |  |  | sd022 |  |  | sd023 |  |  | sd024 |  |  | sd025 |  |  | sd026 |  |  | sd027 |  |  | sd028 |  |  | sd029 |  |  | sd0210 |  |  | sd0211 | sd03 |  |  | sp01 |  |  | sp02a |  |  | sp02b |  |  | sp02c |  |  | sp02d |  |  | sp02e |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Julio 2024 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2024 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2024 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2024 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2024 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2024 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2025 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2025 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2025 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2025 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2025 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2025 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2025 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2025 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2025 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2025 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2025 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2025 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |


Anexo 2F Preguntas de la base de personas **Periodo** **sp02f** **sp02g** **sp02h** **sp02i** **sp02j** **sp02k** **sp02l**


### Tabla

|  | Periodo |  |  | sp02f |  |  | sp02g |  |  | sp02h |  |  | sp02i |  |  | sp02j |  |  | sp02k |  |  | sp02l |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Junio 2007 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2007 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2007 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2008 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2008 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2008 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2008 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2009 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2009 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2009 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2009 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |


40

## Página 41

### Tabla

|  | Periodo |  |  | sp02f |  |  | sp02g |  |  | sp02h |  |  | sp02i |  |  | sp02j |  |  | sp02k |  |  | sp02l |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Marzo 2010 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2010 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2010 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2010 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2011 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2011 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2011 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2011 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2012 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2012 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2012 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2012 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2013 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2013 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2013 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2013 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2014 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2014 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2014 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2014 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2015 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2015 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2015 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2015 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2016 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2016 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2016 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2016 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2017 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2017 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2017 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2017 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2018 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2018 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2018 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2018 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2019 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2019 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |


41

## Página 42

### Tabla

|  | Periodo |  |  | sp02f |  |  | sp02g |  |  | sp02h |  |  | sp02i |  |  | sp02j |  |  | sp02k |  |  | sp02l |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Diciembre 2020 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Julio 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Agosto 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Septiembre 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Octubre 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Noviembre 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Diciembre 2022 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Enero 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Febrero 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Marzo 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Abril 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Mayo 2023 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |
| Junio 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |


42

## Página 43

### Tabla

|  | Periodo |  |  | sp02f |  |  | sp02g |  |  | sp02h |  |  | sp02i |  |  | sp02j |  |  | sp02k |  |  | sp02l |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Abril 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |


43

## Página 44

### Tabla

|  | Periodo |  |  | vi01 |  |  | vi02 |  |  | vi03a |  |  | vi03b |  |  | vi04a |  |  | vi04b |  |  | vi05a |  |  | vi05b |  |  | vi06 |  |  | vi07 |  |  | vi07a1 |  |  | vi07a |  |  | vi07b |  |  | vi08 |  |  | vi09 |  |  | vi09a |  |  | vi09b |  |  | vi09c |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Diciembre 2007 |  |  |  |  |  | x |  |  |  |  |  |  |  |  | X |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2008 |  |  |  |  |  | x |  |  |  |  |  |  |  |  | X |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2009 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2010 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2011 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2011 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2012 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2012 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2013 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2013 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2014 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2014 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2014 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2014 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2015 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2015 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2015 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2015 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2016 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2016 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2016 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2016 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2017 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2017 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2017 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2017 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  |
| Marzo 2018 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2018 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2018 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2018 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2019 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2019 |  |  | x |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2020 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |


44

## Página 45

### Tabla

|  | Periodo |  |  | vi01 |  |  | vi02 |  |  | vi03a |  |  | vi03b |  |  | vi04a |  |  | vi04b |  |  | vi05a |  |  | vi05b |  |  | vi06 |  |  | vi07 |  |  | vi07a1 |  |  | vi07a |  |  | vi07b |  |  | vi08 |  |  | vi09 |  |  | vi09a |  |  | vi09b |  |  | vi09c |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Junio 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2021 |  |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  |  |  |  |  |
| Enero 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2022 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Marzo 2022 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Abril 2022 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Mayo 2022 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Junio 2022 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Julio 2022 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Agosto 2022 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Septiembre 2022 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Octubre 2022 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Noviembre 2022 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Diciembre 2022 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Enero 2023 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Febrero 2023 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Marzo 2023 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Abril 2023 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Mayo 2023 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Junio 2023 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Julio 2023 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Agosto 2023 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Septiembre 2023 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Octubre 2023 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Noviembre 2023 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Diciembre 2023 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Enero 2024 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Febrero 2024 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Marzo 2024 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Abril 2024 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Mayo 2024 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Junio 2024 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Julio 2024 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Agosto 2024 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Septiembre 2024 |  |  | X |  |  | x |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |


45

## Página 46

### Tabla

|  | Periodo |  |  | vi01 |  | vi02 |  |  | vi03a |  | vi03b | vi04a |  | vi04b |  |  | vi05a |  |  | vi05b |  |  | vi06 |  |  | vi07 |  |  | vi07a1 | vi07a |  | vi07b |  |  | vi08 |  |  | vi09 |  |  | vi09a |  | vi09b |  | vi09c |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Octubre 2024 |  |  | X |  |  | x |  | X |  |  | x | x | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  | x |  | x |  | x |  |  | x |  |  | x |  | x |  |  |  |  |
| Noviembre 2024 |  |  | X |  |  | x |  | X |  |  | x | x | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  | x |  | x |  | x |  |  | x |  |  | x |  | x |  |  |  |  |
| Diciembre 2024 |  |  | X |  |  | x |  | X |  |  | x | x | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  | x |  | x |  | x |  |  | x |  |  | x |  | x |  |  |  |  |
| Enero 2025 |  |  | X |  |  | x |  | X |  |  | x | x | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  | x |  | x |  | x |  |  | x |  |  | x |  | x |  |  |  |  |
| Febrero 2025 |  |  | X |  |  | x |  | X |  |  | x | x | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  | x |  | x |  | x |  |  | x |  |  | x |  | x |  |  |  |  |
| Marzo 2025 |  |  | X |  |  | x |  | X |  |  | x | x | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  | x |  | x |  | x |  |  | x |  |  | x |  | x |  |  |  |  |
| Abril 2025 |  |  | X |  |  | x |  | X |  |  | x | x | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  | x |  | x |  | x |  |  | x |  |  | x |  | x |  |  |  |  |
| Mayo 2025 |  |  | X |  |  | x |  | X |  |  | x | x | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  | x |  | x |  | x |  |  | x |  |  | x |  | x |  |  |  |  |
| Junio 2025 |  |  | X |  |  | x |  | X |  |  | x | x | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  | x |  | x |  | x |  |  | x |  |  | x |  | x |  |  |  |  |
| Julio 2025 |  |  | X |  |  | x |  | X |  |  | x | x | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  | x |  | x |  | x |  |  | x |  |  | x |  | x |  |  |  |  |
| Agosto 2025 |  |  | X |  |  | x |  | X |  |  | x | x | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  | x |  | x |  | x |  |  | x |  |  | x |  | x |  |  |  |  |
| Septiembre 2025 |  |  | X |  |  | x |  | X |  |  | x | x | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  | x |  | x |  | x |  |  | x |  |  | x |  | x |  |  |  |  |
| Octubre 2025 |  |  | X |  |  | x |  | X |  |  | x | x | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  | x |  | x |  | x |  |  | x |  |  | x |  | x |  |  |  |  |
| Noviembre 2025 |  |  | X |  |  | x |  | X |  |  | x | x | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  | x |  | x |  | x |  |  | x |  |  | x |  | x |  |  |  |  |
| Diciembre 2025 |  |  | X |  |  | x |  | X |  |  | x | x | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  | x |  | x |  | x |  |  | x |  |  | x |  | x |  |  |  |  |



### Tabla

|  | Periodo |  |  | vi09d |  | vi09e |  |  | vi09f |  | vi10 | vi101 |  | vi102 |  |  | vi10a |  |  | vi10b |  |  | vi11 |  |  | vi12 |  |  | vi13 |  |  | vi14 | vi14a1 |  | vi14a2 |  |  | vi14a3 |  |  | vi14a4 |  | vi14a5 |  | vi14a |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Diciembre 2007 |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2008 |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  | x | x |  |  | x |  |  | x |  |  | x |  |  |  |
| Diciembre 2009 |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2010 |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2011 |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2011 |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2012 |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2012 |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2013 |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2013 |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2014 |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2014 |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2014 |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2014 |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2015 |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2015 |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2015 |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2015 |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2016 |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2016 |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |


46

## Página 47

### Tabla

|  | Periodo |  |  | vi09d |  |  | vi09e |  |  | vi09f |  |  | vi10 |  |  | vi101 |  |  | vi102 |  |  | vi10a |  |  | vi10b |  |  | vi11 |  |  | vi12 |  |  | vi13 |  |  | vi14 |  |  | vi14a1 |  |  | vi14a2 |  |  | vi14a3 |  |  | vi14a4 |  |  | vi14a5 |  |  | vi14a |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Septiembre 2016 |  |  |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2016 |  |  |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2017 |  |  |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2017 |  |  |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2017 |  |  |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2017 |  |  | X |  |  | X |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | x |  |  |
| Marzo 2018 |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2018 |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | x |  |  |
| Septiembre 2018 |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2018 |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2019 |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2019 |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2020 |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2021 |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2022 |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2022 |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2022 |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2022 |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2022 |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2022 |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2022 |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2022 |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2022 |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2022 |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2022 |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2023 |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2023 |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2023 |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |


47

## Página 48

### Tabla

|  | Periodo |  |  | vi09d |  |  | vi09e |  |  | vi09f |  | vi10 |  |  | vi101 |  |  | vi102 |  |  | vi10a | vi10b |  | vi11 |  | vi12 |  | vi13 |  |  | vi14 |  |  | vi14a1 |  |  | vi14a2 | vi14a3 |  |  | vi14a4 |  |  | vi14a5 |  |  | vi14a |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Abril 2023 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2023 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2023 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2023 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2023 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2023 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2023 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2023 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2023 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2024 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2024 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2024 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2024 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2024 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2024 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2024 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2024 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2024 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2024 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2024 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2024 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2025 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2025 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2025 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2025 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2025 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2025 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2025 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2025 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2025 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2025 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2025 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2025 |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  | x |  |  | x |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |



### Tabla

|  | Periodo |  | vi14b |  |  | vi141 |  |  | vi142 | vi143 |  | vi144 |  | vi151 |  | vi1511 |  |  | vi1512 |  |  | vi152 | vi1521 |  |  | vi1522 |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Diciembre 2007 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2008 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |


48

## Página 49

### Tabla

|  | Periodo |  |  | vi14b |  |  | vi141 |  |  | vi142 |  |  | vi143 |  |  | vi144 |  |  | vi151 |  |  | vi1511 |  |  | vi1512 |  |  | vi152 |  | vi1521 |  |  | vi1522 |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Diciembre 2009 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2010 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2011 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2011 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2012 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2012 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2013 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2013 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2014 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2014 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2014 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2014 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2015 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2015 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2015 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2015 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2016 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2016 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2016 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2016 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2017 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2017 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2017 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2017 |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2018 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2018 |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2018 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2018 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2019 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2019 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2020 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |


49

## Página 50

### Tabla

|  | Periodo |  |  | vi14b |  |  | vi141 |  |  | vi142 |  |  | vi143 |  |  | vi144 |  |  | vi151 |  |  | vi1511 |  |  | vi1512 |  |  | vi152 |  | vi1521 |  |  | vi1522 |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Junio 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2022 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  |  |  |  |  |  |
| Marzo 2022 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  | x |  |  |  |  |  |  |  |
| Abril 2022 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  |  | x |  |  |
| Mayo 2022 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  |  | x |  |  |
| Junio 2022 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  |  | x |  |  |
| Julio 2022 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  |  | x |  |  |
| Agosto 2022 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  |  | x |  |  |
| Septiembre 2022 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  |  | x |  |  |
| Octubre 2022 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  |  | x |  |  |
| Noviembre 2022 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  |  | x |  |  |
| Diciembre 2022 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  |  | x |  |  |
| Enero 2023 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  |  | x |  |  |
| Febrero 2023 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  |  | x |  |  |
| Marzo 2023 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  |  | x |  |  |
| Abril 2023 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  |  | x |  |  |
| Mayo 2023 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  |  | x |  |  |
| Junio 2023 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  |  | x |  |  |
| Julio 2023 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  |  | x |  |  |
| Agosto 2023 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  |  | x |  |  |
| Septiembre 2023 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  |  | x |  |  |
| Octubre 2023 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  |  | x |  |  |
| Noviembre 2023 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  |  | x |  |  |
| Diciembre 2023 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  |  | x |  |  |
| Enero 2024 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  |  | x |  |  |
| Febrero 2024 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  |  | x |  |  |
| Marzo 2024 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  |  | x |  |  |
| Abril 2024 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  |  | x |  |  |
| Mayo 2024 |  |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  |  | x |  |  |


50

## Página 51

### Tabla

|  | Periodo |  | vi14b |  |  | vi141 |  |  | vi142 |  |  | vi143 |  |  | vi144 |  |  | vi151 |  |  | vi1511 |  |  | vi1512 |  |  | vi152 | vi1521 |  |  | vi1522 |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Junio 2024 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  | x |  |  |
| Julio 2024 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  | x |  |  |
| Agosto 2024 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  | x |  |  |
| Septiembre 2024 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  | x |  |  |
| Octubre 2024 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  | x |  |  |
| Noviembre 2024 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  | x |  |  |
| Diciembre 2024 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  | x |  |  |
| Enero 2025 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  | x |  |  |
| Febrero 2025 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  | x |  |  |
| Marzo 2025 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  | x |  |  |
| Abril 2025 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  | x |  |  |
| Mayo 2025 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  | x |  |  |
| Junio 2025 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  | x |  |  |
| Julio 2025 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  | x |  |  |
| Agosto 2025 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  | x |  |  |
| Septiembre 2025 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  | x |  |  |
| Octubre 2025 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  | x |  |  |
| Noviembre 2025 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  | x |  |  |
| Diciembre 2025 |  |  |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  | x |  | x |  |  |



### Tabla

|  | Periodo |  | vi1531 |  | vi1541 |  | vi1532 |  | vi1542 |  | vi1533 |  |  | vi1543 |  | vi1534 |  | vi1544 |  | vi1535 |  |  | vi1545 |  | vi1536 |  |  | vi1546 |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Diciembre 2007 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2008 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2009 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2010 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2011 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2011 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2012 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2012 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2013 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2013 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2014 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2014 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |


51

## Página 52

### Tabla

|  | Periodo |  |  | vi1531 |  | vi1541 |  | vi1532 |  | vi1542 |  | vi1533 |  |  | vi1543 |  | vi1534 |  | vi1544 |  | vi1535 |  |  | vi1545 |  | vi1536 |  |  | vi1546 |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Septiembre 2014 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2014 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2015 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2015 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2015 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2015 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2016 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2016 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2016 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2016 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2017 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2017 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2017 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2017 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2018 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2018 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2018 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2018 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2019 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2019 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2020 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2022 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Marzo 2022 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Abril 2022 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |


52

## Página 53

### Tabla

|  | Periodo |  |  | vi1531 |  | vi1541 |  | vi1532 |  | vi1542 |  | vi1533 |  |  | vi1543 |  | vi1534 |  | vi1544 |  | vi1535 |  |  | vi1545 |  | vi1536 |  |  | vi1546 |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Mayo 2022 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Junio 2022 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Julio 2022 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Agosto 2022 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Septiembre 2022 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Octubre 2022 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Noviembre 2022 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Diciembre 2022 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Enero 2023 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Febrero 2023 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Marzo 2023 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Abril 2023 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Mayo 2023 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Junio 2023 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Julio 2023 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Agosto 2023 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Septiembre 2023 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Octubre 2023 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Noviembre 2023 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Diciembre 2023 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Enero 2024 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Febrero 2024 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Marzo 2024 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Abril 2024 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Mayo 2024 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Junio 2024 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Julio 2024 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Agosto 2024 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Septiembre 2024 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Octubre 2024 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Noviembre 2024 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Diciembre 2024 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Enero 2025 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Febrero 2025 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Marzo 2025 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Abril 2025 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |
| Mayo 2025 |  |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  |  | x |  |  |


53

## Página 54

### Tabla

|  | Periodo |  |  | vi1531 |  | vi1541 |  | vi1532 |  | vi1542 | vi1533 |  |  | vi1543 |  | vi1534 |  | vi1544 | vi1535 |  |  | vi1545 |  | vi1536 |  |  | vi1546 |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Junio 2025 |  |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  |
| Julio 2025 |  |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  |
| Agosto 2025 |  |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  |
| Septiembre 2025 |  |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  |
| Octubre 2025 |  |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  |
| Noviembre 2025 |  |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  |
| Diciembre 2025 |  |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  |  |


Anexo 3E Preguntas de la base de vivienda-hogar **Periodo** **eqt19a011** **eqt19a021 eqt19a012 eqt19a022 eqt19a013** **eqt19a023** **eqt19a014** **eqt19a024** **eqt19a015** **eqt19a025** **eqt19a016 eqt19a026** **Vi20**


### Tabla

|  | Periodo |  |  | eqt19a011 |  | eqt19a021 |  | eqt19a012 | eqt19a022 |  | eqt19a013 |  | eqt19a023 |  |  | eqt19a014 |  | eqt19a024 | eqt19a015 |  | eqt19a025 |  |  | eqt19a016 |  | eqt19a026 |  | Vi20 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Diciembre 2007 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2008 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2009 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2010 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2011 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2011 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2012 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2012 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2013 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2013 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2014 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2014 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2014 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2014 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2015 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2015 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2015 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2015 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2016 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2016 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2016 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2016 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2017 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2017 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |


54

## Página 55

### Tabla

|  | Periodo |  |  | eqt19a011 |  | eqt19a021 |  | eqt19a012 |  | eqt19a022 |  | eqt19a013 |  | eqt19a023 |  |  | eqt19a014 |  | eqt19a024 |  | eqt19a015 |  | eqt19a025 |  |  | eqt19a016 |  | eqt19a026 |  | Vi20 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Septiembre 2017 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2017 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2018 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2018 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2018 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2018 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2019 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2019 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2020 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2022 |  |  | x |  | x |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  | x |  |  | x |  | x |  | x |  |
| Agosto 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |


55

## Página 56

### Tabla

|  | Periodo |  |  | eqt19a011 |  | eqt19a021 |  | eqt19a012 |  | eqt19a022 |  | eqt19a013 |  | eqt19a023 |  |  | eqt19a014 |  | eqt19a024 |  | eqt19a015 |  | eqt19a025 |  |  | eqt19a016 |  | eqt19a026 |  | Vi20 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Mayo 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |


56

## Página 57

Anexo 4A Secciones de la base de personas


### Tabla

| Periodo |  | Característi |  | Características ocupacionales | Ingresos | Participación en quehaceres domésticos |  |  | Migración |  |  | Crédito |  |  |  |  | Aspectos cualitativos de los desempleados |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  |  | cas de los |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
|  |  | miembros |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
|  |  | del hogar |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2007 | x |  |  | x | x | x |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2007 | x |  |  | x | x | x |  |  | x |  |  |  |  |  |  |  |  |  |
| Diciembre 2007 | x |  |  | x | x | x |  |  |  |  |  | x |  |  |  |  |  |  |
| Marzo 2008 | x |  |  | x | x | x |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2008 | x |  |  | x | x | x |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2008 | x |  |  | x | x | x |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2008 | x |  |  | x | x | x |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2009 | x |  |  | x | x | x |  |  |  |  |  |  |  |  | x |  |  |  |
| Junio 2009 | x |  |  | x | x | x |  |  |  |  |  |  |  |  | x |  |  |  |
| Septiembre 2009 | x |  |  | x | x | x |  |  |  |  |  |  |  |  | x |  |  |  |
| Diciembre 2009 | x |  |  | x | x | x |  |  |  |  |  | x |  |  | x |  |  |  |
| Marzo 2010 | x |  |  | x | x | x |  |  |  |  |  |  |  |  | x |  |  |  |
| Junio 2010 | x |  |  | x | x | x |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2010 | x |  |  | x | x | x |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2010 | x |  |  | x | x | x |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2011 | x |  |  | x | x | x |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2011 | x |  |  | x | x | x |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2011 | x |  |  | x | x | x |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2011 | x |  |  | x | x | x |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2012 | x |  |  | x | x | x |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2012 | x |  |  | x | x | x |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2012 | x |  |  | x | x | x |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2012 | x |  |  | x | x | x |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2013 | x |  |  | x | x | x |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2013 | x |  |  | x | x | x |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2013 | x |  |  | x | x | x |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2013 | x |  |  | x | x | x |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2014 | x |  |  | x | x | x |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2014 | x |  |  | x | x | x |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2014 | x |  |  | x | x | x |  |  |  |  |  |  |  |  | x |  |  |  |
| Diciembre 2014 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |  |  |
| Marzo 2015 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |  |  |
| Junio 2015 | x |  |  | x | x | x |  |  |  |  |  |  |  |  | x |  |  |  |
| Septiembre 2015 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |  |  |
| Diciembre 2015 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |  |  |
| Marzo 2016 | x |  |  | x | x |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2016 | x |  |  | x | x | x |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2016 | x |  |  | x | x |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2016 | x |  |  | x | x |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2017 | x |  |  | x | x |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2017 | x |  |  | x | x | x |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2017 | x |  |  | x | x |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2017 | x |  |  | x | x |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2018 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |  |  |
| Junio 2018 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |  |  |
| Septiembre 2018 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |  |  |
| Diciembre 2018 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |  |  |
| Marzo 2019 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |  |  |
| Diciembre 2019 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |  |  |
| Diciembre 2020 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |  |  |
| Enero 2021 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |  |  |
| Febrero 2021 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |  |  |
| Marzo 2021 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |  |  |
| Abril 2021 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |  |  |
| Mayo 2021 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |  |  |
| Junio 2021 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |  |  |
| Julio 2021 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |  |  |
| Agosto 2021 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |  |  |
| Septiembre 2021 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |  |  |
| Octubre 2021 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |  |  |
| Noviembre 2021 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |  |  |
| Diciembre 2021 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |  |  |
| Enero 2022 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |  |  |

## Página 58

### Tabla

| Periodo |  | Característi |  | Características ocupacionales | Ingresos | Participación en quehaceres domésticos |  |  | Migración |  |  | Crédito |  |  |  | Aspectos cualitativos de los desempleados |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  |  | cas de los |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
|  |  | miembros |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
|  |  | del hogar |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2022 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Marzo 2022 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Abril 2022 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Mayo 2022 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Junio 2022 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Julio 2022 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Agosto 2022 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Septiembre 2022 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Octubre 2022 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Noviembre 2022 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Diciembre 2022 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Enero 2023 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Febrero 2023 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Marzo 2023 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Abril 2023 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Mayo 2023 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Junio 2023 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Julio 2023 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Agosto 2023 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Septiembre 2023 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Octubre 2023 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Noviembre 2023 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Diciembre 2023 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Enero 2024 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Febrero 2024 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Marzo 2024 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Abril 2024 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Mayo 2024 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Junio 2024 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Julio 2024 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Agosto 2024 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Septiembre 2024 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Octubre 2024 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Noviembre 2024 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Diciembre 2024 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Enero 2025 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Febrero 2025 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Marzo 2025 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Abril 2025 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Mayo 2025 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Junio 2025 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Julio 2025 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Agosto 2025 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Septiembre 2025 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Octubre 2025 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Noviembre 2025 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |
| Diciembre 2025 | x |  |  | x | x |  |  |  |  |  |  |  |  |  | x |  |


Anexo 4B Secciones de la base de personas


### Tabla

| Periodo | Cobertura de programas sociales |  |  | TIC's |  |  | Esparcimiento y cultura |  |  |  | Capacitación y |  | Inseguridad ciudadana |  |  | Características de los ocupados |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |  |  |  |  |  | formación |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |  | exclusiva para el |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |  | trabajo |  |  |  |  |  |  |  |
| Junio 2007 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2007 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2007 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2008 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2008 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2008 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |

## Página 59

### Tabla

| Periodo | Cobertura de programas sociales |  |  | TIC's |  |  | Esparcimiento y cultura |  |  |  | Capacitación y |  | Inseguridad ciudadana |  |  | Características de los ocupados |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |  |  |  |  |  | formación |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |  | exclusiva para el |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |  | trabajo |  |  |  |  |  |  |  |
| Diciembre 2008 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2009 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2009 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2009 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2009 | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2010 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2010 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2010 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2010 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2011 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2011 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2011 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2011 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2012 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2012 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2012 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2012 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2013 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2013 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2013 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2013 | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Marzo 2014 |  |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  |
| Junio 2014 | x |  |  |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  |
| Septiembre 2014 |  |  |  |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  |
| Diciembre 2014 | x |  |  | x |  |  | x |  |  | x |  |  | x |  |  |  |  |  |
| Marzo 2015 |  |  |  |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  |
| Junio 2015 | x |  |  |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  |
| Septiembre 2015 |  |  |  |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  |
| Diciembre 2015 | x |  |  | x |  |  |  |  |  | x |  |  | x |  |  |  |  |  |
| Marzo 2016 |  |  |  |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  |
| Junio 2016 |  |  |  |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  |
| Septiembre 2016 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2016 | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  |  |  |  |
| Marzo 2017 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2017 |  |  |  |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  |
| Septiembre 2017 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2017 | x |  |  | x |  |  | x |  |  |  |  |  | x |  |  |  |  |  |
| Marzo 2018 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2018 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2018 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2018 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2019 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2019 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2020 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |

## Página 60

### Tabla

| Periodo | Cobertura de programas sociales |  |  | TIC's |  |  | Esparcimiento y cultura |  |  |  | Capacitación y |  | Inseguridad ciudadana |  |  | Características de los ocupados |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |  |  |  |  |  | formación |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |  | exclusiva para el |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |  | trabajo |  |  |  |  |  |  |  |
| Enero 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2022 |  |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2024 |  |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |

## Página 61

### Tabla

| Periodo | Cobertura de programas sociales |  |  | TIC's |  |  | Esparcimiento y cultura |  |  |  | Capacitación y |  | Inseguridad ciudadana |  | Características de los ocupados |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |  |  |  |  |  | formación |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |  | exclusiva para el |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |  | trabajo |  |  |  |  |  |
| Diciembre 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2025 |  |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |


## Nota: se marca con una “x” los periodos en los que se levantó cada sección

Anexo 4B Secciones de la base de personas


### Tabla

| Periodo | Vacunac ión contra COVID- 19 |  |  | Percepció n de principale s problema s sociales en el Ecuador |  |  | Calidad de los servicios públicos |  |  | Inform ación Ambie ntal |  |  | Armoní a Person al y con la Comun idad |  |  | Actividad Física para personas de 5 a 17 años |  |  |  | Actividad | Uso del Tiempo |  | Confianza Ciudadan a y delito |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | Física y |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | comportam |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | iento |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | sedentario |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | para |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | personas |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | de 18 a 69 |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | años |  |  |  |  |  |
| Junio 2007 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2007 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2007 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2008 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2008 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2008 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2008 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2009 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2009 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2009 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2009 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2010 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2010 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2010 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2010 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2011 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2011 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2011 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2011 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2012 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2012 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2012 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2012 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2013 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2013 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2013 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2013 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2014 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |

## Página 62

### Tabla

| Periodo | Vacunac ión contra COVID- 19 |  |  | Percepció n de principale s problema s sociales en el Ecuador |  |  | Calidad de los servicios públicos |  |  | Inform ación Ambie ntal |  |  | Armoní a Person al y con la Comun idad |  |  | Actividad Física para personas de 5 a 17 años |  |  |  | Actividad |  | Uso del Tiempo |  |  | Confianza Ciudadan a y delito |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | Física y |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | comportam |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | iento |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | sedentario |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | para |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | personas |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | de 18 a 69 |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | años |  |  |  |  |  |  |  |
| Junio 2014 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2014 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2014 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2015 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2015 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2015 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2015 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2016 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2016 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2016 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2016 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2017 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2017 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2017 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2017 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2018 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2018 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2018 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2018 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2019 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2019 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2020 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Enero 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2021 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |
| Enero 2022 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2022 | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2022 | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2022 | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2022 |  |  |  |  |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2022 |  |  |  |  |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2022 |  |  |  |  |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2022 |  |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2022 |  |  |  |  |  |  | x |  |  |  |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2022 |  |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2022 |  |  |  |  |  |  | x |  |  |  |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2022 |  |  |  |  |  |  | x |  |  |  |  |  | x |  |  | x |  |  | x |  |  |  |  |  |  |  |  |
| Enero 2023 |  |  |  |  |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2023 |  |  |  |  |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2023 |  |  |  |  |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2023 |  |  |  |  |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2023 |  |  |  |  |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2023 |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |

## Página 63

### Tabla

| Periodo | Vacunac ión contra COVID- 19 |  |  | Percepció n de principale s problema s sociales en el Ecuador |  |  | Calidad de los servicios públicos |  |  | Inform ación Ambie ntal |  |  | Armoní a Person al y con la Comun idad |  |  | Actividad Física para personas de 5 a 17 años |  |  |  | Actividad |  | Uso del Tiempo |  |  | Confianza Ciudadan a y delito |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | Física y |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | comportam |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | iento |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | sedentario |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | para |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | personas |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | de 18 a 69 |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | años |  |  |  |  |  |  |  |
| Septiembre 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Octubre 2023 |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2023 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  |
| Diciembre 2023 |  |  |  |  |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  |  |  |  | x |  |  |
| Enero 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2024 |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  |
| Octubre 2024 |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2024 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Diciembre 2024 |  |  |  |  |  |  | x |  |  |  |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |
| Enero 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Febrero 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Marzo 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Abril 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Mayo 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Junio 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Julio 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Agosto 2025 |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Septiembre 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  |
| Octubre 2025 |  |  |  |  |  |  |  |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Noviembre 2025 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | x |  |  | x |  |  |  |  |  |  |  |  |
| Diciembre 2025 |  |  |  |  |  |  | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |


Octubre 2025 x Noviembre 2025 x x Diciembre 2025 x

## Nota: se marca con una “x” los periodos en los que se levantó cada sección