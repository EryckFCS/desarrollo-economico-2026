# 🏛️ LDE - Laboratorio de Desarrollo Económico 2026

## Desarrollo Económico (Ciclo 7) - Universidad Nacional de Loja

El **Laboratorio de Desarrollo Económico (LDE)** es un espacio de investigación dedicado al análisis de teorías del crecimiento, desigualdad y cambio estructural desde una perspectiva econométrica y humanista.

---

## 🏗️ Arquitectura de Documentación

Para mantener la operatividad y limpieza del repositorio, los recursos se organizan así:

- **[Sílabo de la Materia](docs/syllabus/SYLLABUS.pdf)**: Guía oficial y cronograma.
- **[Lecturas y Referencias](docs/readings/)**: Repositorio de libros, artículos y papers de la materia.
- **[Índice documental por unidades](docs/README.md)**: Navegación por el sílabo y por las evidencias de cada unidad.
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

## 📄 Renderizado y Reporteo (Quarto)

La arquitectura de documentos sigue el **Estándar Nivel 5**:
- El archivo `_quarto.yml` reside en la **raíz del repositorio**.
- Todo el output generado (HTML/PDF intermedios, dependencias JS/CSS) se concentra automáticamente en el directorio `_site/` o `dist/`.
- No existen carpetas `*_files/` ad-hoc. Todo está cubierto por el `.gitignore` canónico.
- Para previsualizar el sitio completo: `quarto preview` desde la raíz.
