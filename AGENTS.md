# AGENTS.md — Nodo Federado: Economic Development

> Este repositorio es un **Nodo Puro** de la Arquitectura Federada v7.4.0.  
> Opera bajo la Constitución centralizada en `capital-workstation-libs`.

---

## Identidad del Nodo

| Campo | Valor |
|:---|:---|
| **Nodo** | Economic Development |
| **Materia** | Desarrollo Económico |
| **Docente** | Econ. Johanna Magaly Alvarado Espejo |
| **Estudiante** | Erick Fabricio Condoy Seraquive |
| **Período** | Marzo - Agosto 2026 |
| **Librería Central** | `ecs_quantitative` (capital-workstation-libs) |
| **Tipo** | Nodo Puro — consumidor, no reimplementa lógica |
| **RAG** | `economic_development` en `~/.capital/brain/vector_store/` |

---

## Capacidades de Inteligencia (v2.0)

Este nodo ha sido elevado al **Nivel 5: Ecosistema Inteligente**, habilitando las siguientes capacidades de inferencia RAG:

1.  **Inferencia Multiautor**: Capacidad de contrastar teorías de desarrollo entre múltiples fuentes indexadas (Ray, Sachs, Stiglitz, CEPAL).
2.  **Mapeo de Evidencia**: Rastreo automático de conceptos a través de más de 19,000 fragmentos de conocimiento federado.
3.  **Auditoría Teórica**: Verificación de documentos `.qmd` contra la bibliografía base para detectar vacíos de contenido o inconsistencias.
4.  **Sincronización Idempotente**: Ingesta masiva de bibliografía con desduplicación automática mediante SHA256.

---

## Doctrina de Configuración y Blindaje (v1.2)

1.  **Gobernanza Quarto**:
    - Uso estricto de `lualatex` para renderizado institucional.
    - Metadatos YAML en archivos individuales deben evitar comillas innecesarias en campos de texto para prevenir fallos de parseo en Lua.
    - El `_quarto.yml` actúa como orquestador de salida, no como almacén de metadatos variables.
2.  **Higiene del Repositorio**:
    - Scripts de mantenimiento y sincronización (`scratch/`) deben estar ignorados por Git.
    - Resultados de logs de renderizado y archivos PDF temporales deben ser excluidos del versionado.

---

## Arquitectura de Bóvedas (Vaults)

- `docs/evidence/`: Almacén de workshops y síntesis (Nivel 4-5).
- `docs/readings/`: Bóveda de lecturas críticas sincronizadas con RAG.
- `docs/syllabus/`: Marco normativo académico.

---

## Entorno y Operativa

```bash
uv sync
# Ingesta masiva (Texto Puro)
uv run python scratch/sync_rag_all.py
# Renderizado de evidencia
quarto render docs/evidence/... --to pdf
```

---

## Regla de Oro

> El conocimiento acumulado en este nodo es fluido y pertenece a la federación. Úsalo para potenciar otros nodos.
