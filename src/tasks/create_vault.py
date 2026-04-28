import os
import argparse
from pathlib import Path
from loguru import logger

def create_vault(unit: str, category: str, seq: str, slug: str, description: str):
    """Crea una boveda de evidencia estandarizada v8.5.0 (Syllabus Aligned)."""
    root = Path(".")
    
    # Generar ID único: u1-aa-01-slug
    vault_id = f"{unit}-{category}-{seq}-{slug}".lower()
    vault_path = root / "docs" / "vaults" / vault_id
    
    if vault_path.exists():
        logger.error(f"La boveda {vault_id} ya existe.")
        return

    # Estructura base
    dirs = ["assets", "logs", "scripts", "data/raw", "data/processed"]
    for d in dirs:
        (vault_path / d).mkdir(parents=True, exist_ok=True)
    
    # Archivo index.qmd base
    index_content = f"""---
title: "{description}"
subtitle: "Research Vault: {vault_id.upper()}"
author: "Erick Fabricio Condoy Seraquive"
date: last-modified
categories: [{unit.upper()}, {category.upper()}]
format:
  html:
    toc: true
  pdf:
    documentclass: scrartcl
---

# Overview
[Descripción de la actividad según el sílabo]

# Data Lineage
- Type: {category.upper()}
- Unit: {unit.upper()}
- Status: Initialized

# Methodology
[Pasos técnicos realizados]

# Results
[Visualizaciones]

# References
::: {{#refs}}
:::
"""
    with open(vault_path / "index.qmd", "w", encoding="utf-8") as f:
        f.write(index_content)
    
    # Touch log file
    with open(vault_path / "logs" / "init.log", "w") as f:
        f.write(f"Vault {vault_id} initialized.")

    logger.success(f"Boveda '{vault_id}' creada exitosamente.")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--unit", required=True, help="Unidad (ej: u1)")
    parser.add_argument("--cat", required=True, choices=["aa", "ape", "acd"], help="Categoría de aprendizaje")
    parser.add_argument("--seq", required=True, help="Secuencial (ej: 01)")
    parser.add_argument("--slug", required=True, help="Nombre corto (kebab-case)")
    parser.add_argument("--desc", required=True, help="Descripción larga")
    args = parser.parse_args()
    
    create_vault(args.unit, args.cat, args.seq, args.slug, args.desc)
