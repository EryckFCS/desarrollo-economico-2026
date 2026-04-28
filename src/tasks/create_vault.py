import argparse
from pathlib import Path
from loguru import logger

def create_vault(unit: str, category: str, seq: str, slug: str, description: str):
    """Crea una boveda de evidencia estandarizada v8.0.0 (High Fidelity)."""
    root = Path(".")
    
    # Generar ID único: u1-aa-01-slug
    vault_id = f"{unit}-{category}-{seq}-{slug}".lower()
    vault_path = root / "docs" / "evidence" / vault_id
    
    if vault_path.exists():
        logger.error(f"La boveda {vault_id} ya existe.")
        return

    # Estructura base v8.0.0
    dirs = [
        "assets", 
        "logs", 
        "scripts", 
        "chapters",
        "data/raw", 
        "data/processed"
    ]
    for d in dirs:
        (vault_path / d).mkdir(parents=True, exist_ok=True)
    
    # Archivos de capítulos base
    chapters = {
        "01_introduction.qmd": "# Introducción\n[Contexto y objetivos de la actividad]",
        "02_methodology.qmd": "# Metodología\n[Descripción de datos y métodos aplicados]",
        "03_results.qmd": "# Resultados\n[Análisis de hallazgos y visualizaciones]"
    }
    
    for filename, content in chapters.items():
        with open(vault_path / "chapters" / filename, "w", encoding="utf-8") as f:
            f.write(content)

    # Archivo index.qmd (Orquestador Maestro)
    index_content = f"""---
title: "{description}"
subtitle: "Research Vault: {vault_id.upper()}"
author: "Erick Fabricio Condoy Seraquive"
date: last-modified
categories: [{unit.upper()}, {category.upper()}]
---

# Resumen Ejecutivo
[Breve síntesis de la investigación]

{{{{< include chapters/01_introduction.qmd >}}}}

{{{{< include chapters/02_methodology.qmd >}}}}

{{{{< include chapters/03_results.qmd >}}}}

# Referencias
::: {{#refs}}
:::
"""
    with open(vault_path / "index.qmd", "w", encoding="utf-8") as f:
        f.write(index_content)
    
    # Touch log file
    with open(vault_path / "logs" / "init.log", "w") as f:
        f.write(f"Vault {vault_id} initialized in high-fidelity mode (v8.0.0).")

    logger.success(f"Boveda modular '{vault_id}' creada exitosamente.")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--unit", required=True, help="Unidad (ej: u1)")
    parser.add_argument("--cat", required=True, choices=["aa", "ape", "acd"], help="Categoría de aprendizaje")
    parser.add_argument("--seq", required=True, help="Secuencial (ej: 01)")
    parser.add_argument("--slug", required=True, help="Nombre corto (kebab-case)")
    parser.add_argument("--desc", required=True, help="Descripción larga")
    args = parser.parse_args()
    
    create_vault(args.unit, args.cat, args.seq, args.slug, args.desc)
