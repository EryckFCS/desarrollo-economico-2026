# Technical Architecture - Node Economic Development (v8.0.0)

## 1. Purpose
This node implements the **Federated Architecture v8.0.0**, designed for high-fidelity economic research. It prioritizes English-standardized nomenclature and vault autonomy to ensure 100% forensic traceability.

## 2. Core Layers

### 2.1. Intelligence & Configuration
*   [config/intelligence_map.json](config/intelligence_map.json): The operational source of truth.
*   [src/lib/intelligence/](src/lib/intelligence/): The local brain orquestrating RAG and maintenance.
*   [tests/system/test_architecture.py](tests/system/test_architecture.py): Automated gatekeeper for structural integrity.

### 2.2. Autonomous Knowledge Vaults
Located in [docs/vaults/](docs/vaults/), each unit is self-contained:
*   `U1-Economic-Audit/`: Analysis of structuralism in South Korea.
*   `U1-Foundations-Context/`: Initial development frameworks.

Each vault contains:
*   `assets/`: Final tables and figures.
*   `logs/`: Execution telemetry.
*   `scripts/`: Unit-specific logic.
*   `index.qmd`: Quarto orchestrator.

### 2.3. Bibliographic Stack
Managed in [bibliography/](bibliography/), following the multi-fidelity pipeline:
1.  **Raw**: [raw/](bibliography/raw/) (English naming required).
2.  **Processed**: OCR outputs for low-density PDFs.
3.  **Sanitized**: [sanitized/](bibliography/sanitized/) (Ingestion ready).

## 3. Governance
*   **.github/workflows/**: Automated architecture linting.
*   **Management Vault**: [docs/management/](docs/management/) contains blueprint proposals and technical audit reports.

## 4. Usage Rules
1.  **English Only**: All new directories and evidence units must use English names.
2.  **Zero Floating logic**: Global logic in `src/`, unit logic in `docs/vaults/[unit]/scripts/`.
3.  **Asset-Log Invariant**: No asset can exist without a corresponding log entry.


## Intervención v8.1.5 (Endurecimiento)

El nodo ha sido endurecido y unificado en Python 3.12. Se eliminaron archivos flotantes y se centralizó la gestión del Data Lake vía `ecs_core`.