* Master_Audit.do - Orquestador Maestro de la Auditoría
* Ejecuta todas las fases de forma secuencial

clear all
set more off

display "=== INICIANDO AUDITORÍA ECONÓMICA: COREA DEL SUR ==="

* Ejecutar Fases
do "01_Ingesta.do"
do "02_Consolidacion.do"
do "03_Calculos.do"
do "04_Graficos.do"

display "=== AUDITORÍA FINALIZADA EXITOSAMENTE ==="
display "Resultados disponibles en:"
display " - Datos: data/processed/KOR_Audit_Master.dta"
display " - Gráficos: assets/"
display " - Evidencia: logs/"
