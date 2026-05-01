# AGENTS.md - Federated Node: Economic Development

> This repository is a **Level 5+ Pure Node** in the Federated Architecture v8.0.0.
> It operates under the Constitution centralized in `capital-workstation-libs`.

## 1. Node Identity and Governance

| Field | Value |
| --- | --- |
| **Node** | Economic Development |
| **Status** | Active - Master Blueprint v8.0.0 Migrated |
| **Docente** | Econ. Johanna Magaly Alvarado Espejo |
| **Central Library** | `ecs_quantitative` (capital-workstation-libs) |
| **Intelligence Level** | 5 - Intelligent Ecosystem with Controlled Autonomy |
| **Architecture Standard** | Blueprint v8.0.0 (High Fidelity) |
| **Gatekeeper** | `tests/system/test_architecture.py` |

## 2. Advanced Intelligence Capabilities (v3.0)

1. **Autonomous Vaults**: Each evidence unit in `docs/vaults/` contains its own `logs/`, `assets/`, and `scripts/`, ensuring forensic reproducibility.
2. **Standardized RAG Pipeline**: Implements the Universal Sanitization Protocol (USP) with English-centric naming for global automation.
3. **Data Lineage**: Centralized in [config/intelligence_map.json](config/intelligence_map.json).

## 3. Operational Protocols

### 3.1. Architecture Governance Protocol (AGP)
- **Invariant**: Any structural change must satisfy the requirements of `tests/system/test_architecture.py`.
- **Action**: Run `uv run pytest tests/system/test_architecture.py` before committing.

### 3.2. Universal Sanitization Protocol (USP)
- **Path**: PDF (raw) -> OCR (processed) -> Markdown (intermediate) -> Sanitized (RAG).
- **Quality Gate**: Minimum alphanumeric density of 60%.

## 4. Vault Architecture (v8.0.0)

```text
.
├── .github/ workflows/      # Governance automation
├── bibliography/            # raw/, processed/, markdown/, sanitized/
├── config/                  # intelligence_map.json, settings.toml
├── data/                    # Non-bibliographic source data
├── docs/
│   ├── evidence/            # Standardized English vaults (Unit-based)
│   ├── management/          # Architecture and risk reports
│   ├── readings/            # Theoretical frameworks
│   └── syllabus/            # Academic guidelines
├── reports/                 # Institutional deliveries
├── src/                     # Core Domain Logic
└── tests/                   # Governance and System tests
```

## 5. Resilience and Maintenance

```bash
uv sync
# Verify compliance
uv run pytest tests/system/test_architecture.py
# Full Sync (RAG + OCR + Links)
uv run python src/tasks/sync_bibliographic_intelligence.py
```

## Golden Rule
> **Standardization is not optional.** Every asset in `assets/` must have a traceable log in `logs/`.
