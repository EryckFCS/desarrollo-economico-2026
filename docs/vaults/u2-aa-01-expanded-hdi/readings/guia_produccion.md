# Guía Metodológica y Guión de Producción
*Documento de apoyo interno (no incluir en la entrega final en PDF).*

## Guía Metodológica del Archivo Excel

El archivo de Excel local [ecuador_hdi_expanded.xlsx](data/ecuador_hdi_expanded.xlsx) está estructurado para auditoría directa con fórmulas vivas e interactivas:
*   **Hoja de Trabajo: "Cálculos IDHA"**
    *   **Columnas A-E:** Datos de entrada (Año, Índices de Salud, Educación e Ingresos oficiales del PNUD, y Tasa de Desempleo de la OIT/Banco Mundial).
    *   **Columna F (Índice Empleo):** Contiene la fórmula de normalización inversa `=(15-E5*100)/15`, arrastrada hasta el año 2022. Multiplica E5 por 100 para convertir el formato porcentual de Excel en número entero antes de normalizar.
    *   **Columna G (IDH Oficial Reconstruido):** Contiene la fórmula de media geométrica de tres dimensiones `=(B5*C5*D5)^(1/3)`.
    *   **Columna H (IDH Ampliado - IDHA):** Contiene la fórmula multidimensional con peso equitativo de cuatro dimensiones `=(B5*C5*D5*F5)^(1/4)`.
    *   **Fila 15 (Promedio):** Ejecuta la fórmula `=AVERAGE(Column5:Column14)` en todas las columnas para obtener los promedios decenales oficiales.

## Guión de Producción y Puntos Clave del Video Explicativo

Para garantizar el cumplimiento de los tiempos (1m 30s a 2m 00s), los integrantes del grupo exponen el contenido de forma secuencial y coordinada según el siguiente guión estructurado:

| Tiempo | Exponente | Contenido y Apoyo Visual | Puntos Clave Explicados |
|:---:|:---:|---|---|
| **00:00 - 00:20** | **Erick** | *En cámara con el gráfico comparativo en pantalla.* | Presentación de autores, el indicador adicional seleccionado (Tasa de Desempleo) y su justificación teórica desde el enfoque de capacidades de Amartya Sen. |
| **00:20 - 00:45** | **Dayana** | *Compartiendo pantalla mostrando la base del Banco Mundial y el Excel.* | Exposición del IDH Oficial de Ecuador, detallando la procedencia de los datos históricos del PNUD y la OIT (período 2013-2022). |
| **00:45 - 01:15** | **Erick** | *Enfocando las celdas y la fórmula en Excel.* | Explicación matemática de cómo se calculó el índice: fórmula de normalización del desempleo y media geométrica de las 4 dimensiones. |
| **01:15 - 01:40** | **Dayana** | *Señalando la brecha de 2016 y 2020 en el gráfico comparativo.* | Interpretación de resultados: cómo el IDHA captura el impacto real de las recesiones de 2016 y 2020 a diferencia del IDH Oficial que oculta el desempleo. |
| **01:40 - 02:00** | **Erick & Dayana** | *Ambos en cámara.* | Propuesta de política pública prioritaria: rediseño del seguro de desempleo vinculado a la re-capacitación. Cierre y despedida. |
