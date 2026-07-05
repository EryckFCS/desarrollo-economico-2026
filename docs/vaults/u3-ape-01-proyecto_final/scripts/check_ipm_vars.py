import pandas as pd
import numpy as np

# Load data
df_pers = pd.read_parquet("/home/erick-fcs/Documentos/universidad/07_Ciclo/septimo_ciclo/economic_development/docs/vaults/u3-ape-01-proyecto_final/data/personas_2025_anual.parquet")
df_viv = pd.read_parquet("/home/erick-fcs/Documentos/universidad/07_Ciclo/septimo_ciclo/economic_development/docs/vaults/u3-ape-01-proyecto_final/data/vivienda_2025_anual.parquet")

# Standardize keys
for df_tmp in [df_pers, df_viv]:
    for col in ["id_vivienda", "id_hogar", "ciudad", "periodo"]:
        if col in df_tmp.columns:
            df_tmp[col] = df_tmp[col].astype(str).str.strip()

merge_keys = ["id_vivienda", "id_hogar"]
if "periodo" in df_pers.columns and "periodo" in df_viv.columns:
    merge_keys.append("periodo")

df = pd.merge(df_pers, df_viv, on=merge_keys, how="inner", suffixes=("", "_viv"))

# Filter for Pichincha
df["provincia"] = (pd.to_numeric(df["ciudad"], errors="coerce").fillna(0) / 10000).astype(int)
df = df[df["provincia"] == 17].copy()

# Convert variables to numeric
for col in ["p03", "p07", "p08", "p48", "p49", "condact", "empleo", "desempleo", "vi02", "vi04a", "vi06", "vi09", "vi10", "vi12"]:
    if col in df.columns:
        df[col] = pd.to_numeric(df[col], errors="coerce")

# Check reasons for not attending school (p08) for age 18-29 when p07 == 2 (no asiste)
print("\n--- p08 for age 18-29 when p07 == 2 ---")
sub = df[(df["p03"] >= 18) & (df["p03"] <= 29) & (df["p07"] == 2)]
print(sub["p08"].value_counts(dropna=False))

# Check condact for age 5-17
print("\n--- condact for age 5-17 ---")
sub_kids = df[(df["p03"] >= 5) & (df["p03"] <= 17)]
print(sub_kids["condact"].value_counts(dropna=False))

# Check empleo category distribution
print("\n--- empleo distribution ---")
print(df["empleo"].value_counts(dropna=False))

# Check p48 (pension contribution) for occupied (condact == 1)
print("\n--- p48 for occupied (condact == 1) ---")
print(df[df["condact"] == 1]["p48"].value_counts(dropna=False))

# Check vi04a (piso) values
print("\n--- vi04a (piso) ---")
print(df["vi04a"].value_counts(dropna=False))

# Check vi02 (paredes) values
print("\n--- vi02 (paredes) ---")
print(df["vi02"].value_counts(dropna=False))
