#!/usr/bin/env python3
"""
Script de migración para mover los PDFs de la bóveda temporal de lecturas
al Data Lake Centralizado (~/.capital/lake) y generar los enlaces simbólicos
y registros en config/resources.json correspondientes, manteniendo el repositorio limpio.
"""

import os
import json
import shutil
from pathlib import Path

# Definición de rutas del proyecto
PROJECT_ROOT = Path(__file__).resolve().parents[4]
VAULT_DIR = PROJECT_ROOT / "docs" / "vaults" / "u2-aa-01-expanded-hdi"
TEMP_HIGHLIGHTED_DIR = VAULT_DIR / "temp_readings" / "highlighted"
LAKE_BIB_DIR = Path.home() / ".capital" / "lake" / "bibliography" / "raw"
LOCAL_BIB_DIR = PROJECT_ROOT / "bibliography" / "raw"
RESOURCES_JSON = PROJECT_ROOT / "config" / "resources.json"

# Mapeo de archivos esperados a claves BibTeX del references.bib
EXPECTED_PAPERS = {
    "sen_1999_development_as_freedom.pdf": "sen1999development",
    "undp_1990_hdr_concept_measurement.pdf": "undp1990hdr",
    "undp_2015_hdr_work_human_development.pdf": "undp2015work",
    "stiglitz_sen_fitoussi_2009_report_measurement.pdf": "stiglitz2009report",
    "clark_2003_unemployment_social_norm.pdf": "clark2003unemployment",
    "castillo_cueva_2015_determinantes_desempleo.pdf": "arellano2021determinantes",
    "rivera_maldonado_2020_crisis_mercado_laboral.pdf": "esteves2020impacto",
    "ilo_2022_global_employment_trends_youth.pdf": "ilo2022global",
    "worldbank_2020_ecuador_labor_market_impact.pdf": "worldbank2020ecuador",
    "jahan_2016_measuring_human_development.pdf": "jahan2016measuring",
    "undp_2024_hdr_breaking_gridlock.pdf": "undp2024hdr",
    "notas_tecnicas.pdf": "undp2020costarica",
}


def migrate():
    print("🚀 Iniciando migración de artículos de IDH Ampliado al Data Lake...\n")

    # 1. Asegurar existencia de directorios en el Data Lake y local
    LAKE_BIB_DIR.mkdir(parents=True, exist_ok=True)
    LOCAL_BIB_DIR.mkdir(parents=True, exist_ok=True)

    # 2. Cargar config/resources.json
    if RESOURCES_JSON.exists():
        with open(RESOURCES_JSON, "r", encoding="utf-8") as f:
            try:
                resources_data = json.load(f)
            except json.JSONDecodeError:
                print("⚠️ Error: config/resources.json está corrupto. Inicializando vacío.")
                resources_data = {"datasets": [], "bibliography": []}
    else:
        resources_data = {"datasets": [], "bibliography": []}

    # Asegurar que la sección 'bibliography' existe
    if "bibliography" not in resources_data:
        resources_data["bibliography"] = []

    migrated_count = 0
    registered_count = 0
    symlinked_count = 0

    # 3. Procesar cada archivo esperado
    for filename, bibkey in EXPECTED_PAPERS.items():
        src_path = TEMP_HIGHLIGHTED_DIR / filename
        lake_path = LAKE_BIB_DIR / filename
        local_symlink = LOCAL_BIB_DIR / filename

        print(f"📄 Procesando: '{filename}' (BibTeX key: {bibkey})")

        # Verificar si el archivo está en la carpeta temporal de destacados
        if not src_path.exists():
            print(f"  ❌ No encontrado en {TEMP_HIGHLIGHTED_DIR.relative_to(PROJECT_ROOT)}. Omitiendo...")
            continue

        # Copiar al Data Lake
        try:
            shutil.copy2(src_path, lake_path)
            print(f"  ✅ Copiado al Lake: {lake_path}")
            migrated_count += 1
        except Exception as e:
            print(f"  🚨 Error al copiar al Lake: {e}")
            continue

        # Registrar en resources.json
        # Verificar si ya está registrado
        already_registered = False
        for entry in resources_data["bibliography"]:
            if entry.get("id") == bibkey or entry.get("filename") == filename:
                # Actualizar ruta si difiere
                entry["lake_path"] = str(lake_path)
                already_registered = True
                break

        if not already_registered:
            resources_data["bibliography"].append({
                "id": bibkey,
                "filename": filename,
                "lake_path": str(lake_path)
            })
            registered_count += 1
            print("  ✍️ Registrado en config/resources.json")
        else:
            print("  ℹ️ Ya estaba registrado en config/resources.json")

        # Crear Enlace Simbólico en bibliography/raw/
        if local_symlink.is_symlink() or local_symlink.exists():
            try:
                if local_symlink.is_symlink():
                    local_symlink.unlink()
                else:
                    # Si es un archivo real, hacer backup o remover
                    os.remove(local_symlink)
            except Exception as e:
                print(f"  🚨 Error removiendo symlink previo: {e}")
                continue

        try:
            os.symlink(lake_path, local_symlink)
            print(f"  🔗 Enlace simbólico creado: {local_symlink.relative_to(PROJECT_ROOT)} -> Lake")
            symlinked_count += 1
        except Exception as e:
            print(f"  🚨 Error creando enlace simbólico: {e}")

    # 4. Guardar config/resources.json si hubo cambios
    if registered_count > 0 or migrated_count > 0:
        with open(RESOURCES_JSON, "w", encoding="utf-8") as f:
            json.dump(resources_data, f, indent=2, ensure_ascii=False)
            f.write("\n")  # Asegurar línea nueva final
        print("\n💾 config/resources.json actualizado con éxito.")

    print("\n==============================================")
    print("🎉 MIGRACIÓN COMPLETADA CON ÉXITO")
    print(f"   - Copiados al Lake: {migrated_count} archivos")
    print(f"   - Registrados nuevos en resources.json: {registered_count}")
    print(f"   - Enlaces simbólicos creados: {symlinked_count}")
    print("==============================================")
    print("ℹ️  Puedes borrar los archivos de 'temp_readings/highlighted/' de manera segura.")
    print("   El repositorio local ahora los referencia mediante symlinks ligeros.")


if __name__ == "__main__":
    migrate()
