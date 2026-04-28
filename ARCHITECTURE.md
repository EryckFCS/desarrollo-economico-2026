# Technical Architecture - Node Economic Development (v8.0.0)

## 1. Purpose
This node implements the **Federated Architecture v8.0.0**, designed for high-fidelity economic research. It prioritizes English-standardized nomenclature and evidence autonomy to ensure 100% forensic traceability.

## 2. Core Layers

### 2.1. Intelligence & Configuration
*   [config/intelligence_map.json](config/intelligence_map.json): The operational source of truth.
*   [src/lib/intelligence/](src/lib/intelligence/): The local brain orchestrating RAG and maintenance.

## 3. Doctrinas de Limpieza y Orden

### 3.1. Zero Floating Doctrine (Notebooks & Scripts)
- **Prohibición en Raíz**: No se permiten archivos `.ipynb`, `.py` (de análisis), `.csv` o `.xlsx` en la raíz del repositorio.
- **Localización Obligatoria**: Todo activo de investigación debe vivir dentro de su bóveda correspondiente en `docs/evidence/[id]/`.
- **Scripts Globales**: Solo se permiten scripts de mantenimiento en `src/tasks/` o `scripts/` (si son transversales).

# Arquitectura de Nodo Federado v8.0.0 (High Fidelity)

Este repositorio ha sido migrado a un sistema de **Inteligencia Estructurada**.

## 1. Estructura de Directorios (Blueprint v8.0.0)

```text
.
├── .github/ workflows/      # Gobernanza: CI con Ruff, Bandit y Pytest
├── bibliography/            # Bóveda Bibliográfica (Sanitizada/Slugified)
├── config/                  # Mapa de Inteligencia y Linaje de Datos
├── docs/
│   ├── evidence/            # Bóvedas de Evidencia (Syllabus Aligned)
│   │   └── uX-[cat]-[seq]-slug/
│   ├── writing/             # Capa de narrativa y entrega Quarto
│   ├── management/          # Tickets de estado, arquitectura y riesgos
│   ├── readings/            # Lecturas teóricas
│   └── syllabus/            # Documentación académica oficial
├── src/
│   ├── tasks/               # Automatización (create-vault, slugify)
│   └── lib/                 # Lógica de dominio e inteligencia
└── _quarto.yml              # Orquestador del Portal de Investigación
```

## 2. ¿Por qué esta estructura es superior?

1. **Alineación Académica (Syllabus-First)**: La carpeta `evidence/` ya no es un repositorio de archivos, sino un reflejo del sílabo. Los códigos `aa`, `ape` y `acd` permiten auditorías rápidas de cumplimiento curricular.
2. **Resiliencia Multi-plataforma**: El uso estricto de `kebab-case` y la eliminación de espacios/tildes asegura que los scripts funcionen idénticamente en Linux, macOS y runners de GitHub.
3. **Gobernanza Automatizada (Triple Gatekeeper)**:
   - **Arquitectura**: `pytest` garantiza que no haya "desvío estructural".
   - **Código**: `Ruff` asegura que el código sea limpio y libre de errores obvios.
   - **Seguridad**: `Bandit` y checks de entorno previenen fugas de datos.
4. **Escalabilidad Predictiva**: El comando `uv run python src/tasks/create_vault.py` garantiza que cada nueva unidad nazca con su propia estructura de logs y assets, evitando el desorden.

## 3. Gestión de Tickets y Estado

Los archivos como `INGESTION_TICKET.md` representan **Estados Operativos Efímeros** o de **Largo Plazo**.

### Ubicación Correcta
Deben residir en **`docs/management/`**. 
- Los tickets de procesos transversales (ej. Ingesta RAG) van en `docs/management/status/`.
- Los reportes de arquitectura van en `docs/management/reports/`.

## 4. Deficiencias Aceptables y Mejoras Futuras

| Deficiencia | Estado | Mitigación |
| --- | --- | --- |
| **Dependencia de RAG Manual** | Aceptable | El proceso de ingesta masiva (ej. Debraj Ray) aún requiere activación manual. Se planea un watcher automático. |
| **Mapeo de Excel Rígido** | Mejorable | El linaje de datos en `intelligence_map.json` es sensible a cambios de nombre de columnas en Excel. |
| **Renderización de PDFs** | Aceptable | Quarto requiere configuración local para PDFs pesados. |

---
*Gobernanza validada por Antigravity AI.*
Managed in [bibliography/](bibliography/), following the multi-fidelity pipeline:
1.  **Raw**: [raw/](bibliography/raw/) (English naming required).
2.  **Processed**: OCR outputs for low-density PDFs.
3.  **Sanitized**: [sanitized/](bibliography/sanitized/) (Ingestion ready).

## 3. Governance
*   **.github/workflows/**: Automated architecture linting.
*   **Management Vault**: [docs/management/](docs/management/) contains blueprint proposals and technical audit reports.

## 4. Usage Rules
1.  **English Only**: All new directories and evidence units must use English names.
2.  **Zero Floating logic**: Global logic in `src/`, unit logic in `docs/evidence/[unit]/scripts/`.
3.  **Asset-Log Invariant**: No asset can exist without a corresponding log entry.
