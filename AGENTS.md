# AGENTS.md — Nodo Federado: Economic Development

> Este repositorio es un **Nodo Puro** de la Arquitectura Federada v7.4.0.  
> Opera bajo la Constitución centralizada en `capital-workstation-libs`.

---

## Constitución

```
/home/erick-fcs/Capital_Workstation/capital-workstation-libs/.github/copilot-instructions.md
```
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
| **RAG** | `global_knowledge` en `~/.capital/brain/vector_store/` |

---

## Arquitectura de Bóvedas (Vaults)

Este nodo implementa el sistema de **Bóvedas de Conocimiento**, donde cada unidad del sílabo se gestiona como una unidad de evidencia reproducible:

- `docs/evidence/`: Almacén de workshops, informes y síntesis teóricas.
- `docs/readings/`: Bóveda de lecturas (Hidalgo-Capitán, Retrospectiva del Desarrollo).
- `docs/syllabus/`: Marco normativo y académico de la materia.

---

## Ley de Nodo Puro (Obligatoria)

1. **No reimplementar** lógica que ya exista en `ecs_quantitative`.
2. **Importar siempre** desde la librería central.
3. **RAG**: usar la base central, nunca crear stores locales.
4. **Bóvedas**: toda evidencia debe seguir el formato Quarto (.qmd) y estar vinculada al índice central.

---

## Entorno

```bash
uv sync
uv run python main.py  # o el orquestador correspondiente
```

---

## Regla de Oro

> Si algo sirve para otras materias, propónlo para la librería central.
