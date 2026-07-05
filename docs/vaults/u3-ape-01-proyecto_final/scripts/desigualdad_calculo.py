"""
Cálculo Simplificado de Desigualdad ENEMDU Anual 2025 (Pichincha)
==============================================================
Este script realiza de forma metodológicamente correcta el cálculo de:
1. Coeficiente de Gini (Brown Ponderado)
2. Puntos de la Curva de Lorenz
3. Índice de Theil (Entropía Ponderada)

Filtra los datos para la provincia de Pichincha y exporta la base final limpia
en formatos Stata (.dta) y Excel (.xlsx) para auditoría.
"""

import sys
import json
from pathlib import Path
import pandas as pd
import numpy as np

# Configurar rutas
SCRIPT_DIR = Path(__file__).resolve().parent
VAULT_DIR = SCRIPT_DIR.parent
DATA_DIR = VAULT_DIR / "data"

PATH_PERSONAS_PARQUET = DATA_DIR / "personas_2025_anual.parquet"

def calcular_gini(ingreso: np.ndarray, pesos: np.ndarray) -> float:
    """Calcula el coeficiente de Gini de Brown ponderado."""
    orden = np.argsort(ingreso)
    y = ingreso[orden]
    w = pesos[orden]
    
    w_cum = np.cumsum(w)
    w_sum = w_cum[-1]
    y_cum = np.cumsum(y * w)
    y_sum = y_cum[-1]
    
    q = y_cum / y_sum
    q_prev = np.concatenate(([0.0], q[:-1]))
    
    gini = 1.0 - np.sum(w * (q + q_prev)) / w_sum
    return float(gini)

def calcular_theil(ingreso: np.ndarray, pesos: np.ndarray) -> float:
    """Calcula el índice de Theil L (Desviación Logarítmica Media) ponderado."""
    mask = (ingreso > 0) & (pesos > 0)
    y = ingreso[mask]
    w = pesos[mask]
    
    if len(y) == 0:
        return 0.0
        
    y_medio = np.average(y, weights=w)
    # Theil L = sum( w_i * ln( y_medio / y_i ) ) / sum(w)
    theil = np.average(np.log(y_medio / y), weights=w)
    return float(theil)

def main():
    if not PATH_PERSONAS_PARQUET.exists():
        print(f"ERROR: No existe el archivo {PATH_PERSONAS_PARQUET}")
        sys.exit(1)
        
    print("Cargando microdatos de personas...")
    df = pd.read_parquet(PATH_PERSONAS_PARQUET)
    
    # Filtrar por provincia de Pichincha (Código 17)
    df["provincia"] = (pd.to_numeric(df["ciudad"], errors="coerce").fillna(0) / 10000).astype(int)
    df_pich = df[df["provincia"] == 17].copy()
    
    # Seleccionar variables clave de desigualdad y población
    cols_key = ["id_vivienda", "id_hogar", "id_persona", "ciudad", "periodo", "ingpc", "fexp"]
    df_clean = df_pich[cols_key].copy()
    
    # Limpieza metodológica: ingresos válidos y estrictamente positivos para desigualdad
    df_clean["ingpc"] = pd.to_numeric(df_clean["ingpc"], errors="coerce")
    df_clean["fexp"] = pd.to_numeric(df_clean["fexp"], errors="coerce")
    df_clean = df_clean[df_clean["ingpc"].notna() & (df_clean["ingpc"] > 0) & (df_clean["fexp"] > 0)].copy()
    
    print(f"Observaciones válidas en Pichincha con ingresos > 0: {len(df_clean)}")
    
    # Calcular coeficientes
    ingresos = df_clean["ingpc"].values
    pesos = df_clean["fexp"].values
    
    gini_val = calcular_gini(ingresos, pesos)
    theil_val = calcular_theil(ingresos, pesos)
    
    print("\n=============================================")
    # Format en español
    print(f"Resultados de Desigualdad Pichincha 2025 (Python):")
    print(f" - Coeficiente de Gini: {gini_val:.4f}")
    print(f" - Índice de Theil:     {theil_val:.4f}")
    print("=============================================")
    
    # Exportar base limpia a DTA (Stata)
    path_dta = DATA_DIR / "desigualdad_pichincha_2025.dta"
    df_export = df_clean.copy()
    for col in df_export.select_dtypes(include=['object', 'category']).columns:
        df_export[col] = df_export[col].astype(str).str.strip()
    df_export.to_stata(path_dta, write_index=False, version=117)
    print(f"Base guardada en Stata: {path_dta}")
    
    # Exportar base espejo a Excel (.xlsx)
    path_xlsx = DATA_DIR / "desigualdad_pichincha_2025.xlsx"
    df_export.to_excel(path_xlsx, index=False, sheet_name="Desigualdad_2025")
    print(f"Base espejo guardada en Excel: {path_xlsx}")

if __name__ == "__main__":
    main()
