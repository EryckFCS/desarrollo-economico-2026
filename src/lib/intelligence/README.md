# Motor de Inteligencia Bibliográfica (Local)

Este paquete orquesta la inteligencia del nodo `economic_development` utilizando la librería central `ecs_quantitative`.

## Módulos

### 1. [sync.py](sync.py) (`IntelligenceOrchestrator`)
El orquestador principal. Ejecuta el pipeline completo:
*   Conversión de PDF a Markdown.
*   Sanitización de ruido y detección de OCR.
*   Sincronización con el Vector Store (RAG).

### 2. [maintenance.py](maintenance.py) (`IntelligenceMaintenance`)
Utilidades de mantenimiento basadas en [config/intelligence_map.json](../../../config/intelligence_map.json):
*   `apply_excel_links()`: Inserta enlaces de referencia (lineage) en archivos Excel.
*   `launch_pending_ocr()`: Dispara `ocrmypdf` para archivos marcados como `PENDING`.
*   `reset_rag()`: Gestión de limpieza del índice.

### 3. [converter.py](converter.py) (`PDFToMarkdownConverter`)
Wrapper de `fitz` (PyMuPDF) para extracción de texto con detección de densidad alfanumérica.

### 4. [sanitizer.py](sanitizer.py) (`BibliographicSanitizer`)
Wrapper de la lógica central de sanitización de `ecs_quantitative`.

## Configuración Principal
Toda la lógica de este paquete depende del [Mapa de Inteligencia Central](../../../config/intelligence_map.json).
