# 🏛️ LDE - Laboratorio de Desarrollo Económico 2026

## Desarrollo Económico (Ciclo 7) - Universidad Nacional de Loja

El **Laboratorio de Desarrollo Económico (LDE)** es un espacio de investigación dedicado al análisis de teorías del crecimiento, desigualdad y cambio estructural desde una perspectiva econométrica y humanista.

---

## 🏗️ Arquitectura de Documentación

Para mantener la operatividad y limpieza del repositorio, los recursos se organizan así:

- **[Sílabo de la Materia](docs/syllabus/SYLLABUS.pdf)**: Guía oficial y cronograma.
- **[Lecturas y Referencias](docs/readings/)**: Repositorio de libros, artículos y papers de la materia.
- **[Arquitectura](ARCHITECTURE.md)**: Diseño técnico del repositorio.
- **[Roadmap](ROADMAP.md)**: Seguimiento de unidades y tareas.

---

## 🚀 Guía de Inicio

### 1. Entorno de Datos
Utilizamos `uv` para garantizar la reproducibilidad de los modelos de desarrollo:
```bash
uv sync
source .venv/bin/activate
```

### 2. Ejecución de Modelos
Las tareas se estructuran por unidades del sílabo:
```bash
python src/orchestration/M01-U1-LDE-Master_Build.py
```

---
*LDE - Centro de Investigación Econométrica. UNL.*
