import pandas as pd
import numpy as np

df_pers = pd.read_parquet("/home/erick-fcs/Documentos/universidad/07_Ciclo/septimo_ciclo/economic_development/docs/vaults/u3-ape-01-proyecto_final/data/personas_2025_anual.parquet")

# Filter for age 18-29 who don't attend school
sub = df_pers[(df_pers["p03"] >= 18) & (df_pers["p03"] <= 29) & (df_pers["p07"] == "2.0")].copy()
if len(sub) == 0:
    sub = df_pers[(pd.to_numeric(df_pers["p03"], errors="coerce") >= 18) & 
                  (pd.to_numeric(df_pers["p03"], errors="coerce") <= 29) & 
                  (pd.to_numeric(df_pers["p07"], errors="coerce") == 2)].copy()

print(f"Number of records: {len(sub)}")
for col in ["p08", "p081", "p085", "p09", "p10a", "p10b", "p11", "p12a", "p12b"]:
    if col in sub.columns:
        non_null = sub[col].notna().sum()
        print(f"{col}: {non_null} non-null values")
        if non_null > 0:
            print(sub[col].value_counts(dropna=False).head(5))
