import pandas as pd
import numpy as np

df_pers = pd.read_parquet("/home/erick-fcs/Documentos/universidad/07_Ciclo/septimo_ciclo/economic_development/docs/vaults/u3-ape-01-proyecto_final/data/personas_2025_anual.parquet")

# Convert to numeric
df_pers["condact"] = pd.to_numeric(df_pers["condact"], errors="coerce")
df_pers["empleo"] = pd.to_numeric(df_pers["empleo"], errors="coerce")

# Filter for occupied
ocupados = df_pers[df_pers["condact"] == 1]
print("Ocupados count:", len(ocupados))
print(ocupados["empleo"].value_counts(dropna=False))

# What other columns contain labor category?
for col in ["p42", "p44a", "secemp", "desempleo"]:
    if col in df_pers.columns:
        print(f"\n--- occupied {col} ---")
        df_pers[col] = pd.to_numeric(df_pers[col], errors="coerce")
        print(ocupados[col].value_counts(dropna=False).head(10))
