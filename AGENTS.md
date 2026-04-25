# AGENTS.md - Nodo Federado: Economic Development

> Este repositorio es un Nodo Puro de la Arquitectura Federada v7.4.0.
> Opera bajo la Constitucion centralizada en `capital-workstation-libs`.

## Constitucion

```text
/home/erick-fcs/Capital_Workstation/capital-workstation-libs/.github/copilot-instructions.md
```

## 1. Identidad del Nodo y Gobernanza

| Campo | Valor |
| --- | --- |
| **Nodo** | Economic Development |
| **Materia** | Desarrollo Economico |
| **Estado** | Activo - Sintesis teorica y evidencia por unidades |
| **Docente** | Econ. Johanna Magaly Alvarado Espejo |
| **Estudiante** | Erick Fabricio Condoy Seraquive |
| **Periodo** | Marzo - Agosto 2026 |
| **Libreria Central** | `ecs_quantitative` (capital-workstation-libs) |
| **Nivel de Inteligencia** | 5 - Ecosistema Inteligente |
| **Gatekeeper** | `tests/test_main.py` |
| **QA complementaria** | `python -m pytest` |
| **RAG** | `economic_development` en `~/.capital/brain/vector_store/`; `bibliography/` conserva `bibliography_index.json` y `rag_status.json` |

## 2. Capacidades de Inteligencia (v2.0)

Este nodo ha sido elevado al Nivel 5, habilitando las siguientes capacidades de inferencia RAG:

1. Inferencia Multiautor: capacidad de contrastar teorias de desarrollo entre fuentes indexadas y lecturas del curso.
2. Mapeo de Evidencia: rastreo de conceptos a traves de las unidades de evidencia y las lecturas criticas.
3. Auditoria Teorica: verificacion de documentos QMD contra la bibliografia base para detectar vacios o inconsistencias.
4. Sincronizacion Idempotente: ingestiones y actualizaciones de bibliografia con desduplicacion y control de estado.

## 3. Protocolos Operativos

### 3.1. Contractual QA Protocol

- Invariante: ningun cambio se considera estable si rompe el contrato principal del nodo o los metadatos bibliograficos.
- Accion: ejecutar `PYTHONPATH=src .venv/bin/python -m pytest tests/test_main.py` antes de cerrar cambios de conducta o estructura.
- Falla: si el test falla, se corrige la causa raiz antes de continuar.

### 3.2. Research Protocol

- Deteccion: identificar si la tarea es teoria (readings) o aplicacion (evidence).
- Ubicacion: la logica de evidencia vive en `docs/evidence/`, las lecturas en `docs/readings/`, el syllabus en `docs/syllabus/`, la gestion biblica en `bibliography/` y la gobernanza visual en `style/`.
- Registro: cada ejecucion debe dejar logs en el vault local correspondiente y mantener sincronizados `bibliography_index.json` y `rag_status.json`.

## 4. Arquitectura de Bovedas (Nivel 5)

### 4.1. Estructura Analitica

```text
.
|-- docs/
|   |-- evidence/            # Workshops and synthesis by unit
|   |-- readings/            # Critical readings and references
|   `-- syllabus/            # Academic and institutional syllabus
|-- bibliography/            # Bibliography index and RAG status
|-- style/                   # Quarto theme and visual governance
|-- src/                     # Core logic and domain wrappers
|-- tests/                   # Regression checks
`-- main.py                  # Entry point for the node
```

### 4.2. Capas Documentales

- `docs/evidence/`: unidades como `U1-Fundamentos-Contexto/` con evidencias reproducibles.
- `docs/readings/`: lectura critica, sintesis teoricas y material de apoyo.
- `docs/syllabus/`: syllabus oficial y documentacion institucional.
- `bibliography/`: cache canonico de referencias con `bibliography_index.json` y `rag_status.json`.
- `style/`: hoja de estilo Quarto y gobierno visual del nodo.

## 5. Estrategia de Resiliencia

1. Zero Floating Doctrine: no deben flotar scripts analiticos en la raiz; la logica operativa debe quedarse en `src/` o en los sub-vaults de evidencia.
2. Path Integrity: resolver rutas con `pathlib` y la configuracion del proyecto, no con rutas codificadas a mano.
3. Quarto Governance: usar `lualatex` para PDF, mantener YAML minimalista y excluir `scratch/` y salidas temporales.
4. Bibliography Hygiene: no crear stores alternativos y mantener sincronizados los archivos de trazabilidad.

## 6. Entorno y Mantenimiento

```bash
uv sync
PYTHONPATH=src .venv/bin/python -m pytest tests/test_main.py
uv run python scratch/sync_rag_all.py
quarto render docs/evidence/... --to pdf
```

## 7. Regla de Oro

> Si algo que se construye aqui sirve para otras materias, proponlo para la libreria central.

## 8. Protocolo de Verificación Basado en Evidencia (PVBE)

Para garantizar la integridad del nodo y evitar falsos positivos en la comunicación operativa, el agente DEBE seguir este ciclo sin excepciones:

1.  **Detección de Cambio**: Identificar el archivo o estado a modificar.
2.  **Ejecución Física**: Disparar el comando real (`run_command`, `write_to_file`, etc.) y capturar el `stdout`/`stderr`.
3.  **Inspección Post-Acción**: Ejecutar un comando de verificación (ej. `ls`, `cat`, `grep`, o lectura de celdas en Excel) para confirmar que el sistema de archivos o el contenido refleja el cambio esperado.
4.  **Reporte Basado en Evidencia**: Solo después de confirmar el cambio real, se permite reportar el éxito a la interfaz del usuario, incluyendo el fragmento de evidencia (log o salida) que lo respalda.
5.  **Anti-Narrativa**: Queda prohibido declarar "listo" o "completado" basado únicamente en la intención o en la generación del código sin su ejecución verificada.
