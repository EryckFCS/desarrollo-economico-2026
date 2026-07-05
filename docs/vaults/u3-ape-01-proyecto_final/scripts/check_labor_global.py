import pandas as pd
import numpy as np

df_pers = pd.read_parquet("/home/erick-fcs/Documentos/universidad/07_Ciclo/septimo_ciclo/economic_development/docs/vaults/u3-ape-01-proyecto_final/data/personas_2025_anual.parquet")

print("--- condact value counts ---")
print(df_pers["condact"].value_counts(dropna=False))

print("\n--- empleo value counts ---")
print(df_pers["empleo"].value_counts(dropna=False))

print("\n--- desempleo value counts ---")
print(df_pers["desempleo"].value_counts(dropna=False))
