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
df["ingpc"] = pd.to_numeric(df["ingpc"], errors="coerce").fillna(0.0)
df["fexp"] = pd.to_numeric(df["fexp"], errors="coerce").fillna(1.0)

# Filter valid income records as in process_2025.py
df_ing = df[df["ingpc"].notna() & (df["ingpc"] >= 0)].copy()

def calcular_gini(ingreso: np.ndarray, pesos: np.ndarray) -> float:
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
    mask = (ingreso > 0) & (pesos > 0)
    y = ingreso[mask]
    w = pesos[mask]
    if len(y) == 0:
        return 0.0
    y_medio = np.average(y, weights=w)
    theil = np.average(np.log(y_medio / y), weights=w)
    return float(theil)

# Compute point estimates
y_pt = df_ing["ingpc"].values
w_pt = df_ing["fexp"].values
gini_point = calcular_gini(y_pt, w_pt)
theil_point = calcular_theil(y_pt, w_pt)

# Bootstrap
np.random.seed(42)
n_reps = 100
gini_reps = []
theil_reps = []
n_obs = len(df_ing)

print("Running bootstrap...")
for r in range(n_reps):
    idx_resample = np.random.choice(n_obs, size=n_obs, replace=True)
    y_r = y_pt[idx_resample]
    w_r = w_pt[idx_resample]
    
    gini_reps.append(calcular_gini(y_r, w_r))
    theil_reps.append(calcular_theil(y_r, w_r))

# Calculate SE and CI
se_gini = np.std(gini_reps, ddof=1)
ci_gini = [np.percentile(gini_reps, 2.5), np.percentile(gini_reps, 97.5)]

se_theil = np.std(theil_reps, ddof=1)
ci_theil = [np.percentile(theil_reps, 2.5), np.percentile(theil_reps, 97.5)]

print(f"\nGini: Point Est = {gini_point:.4f}, SE = {se_gini:.4f}, 95% CI = [{ci_gini[0]:.4f}, {ci_gini[1]:.4f}]")
print(f"Theil L: Point Est = {theil_point:.4f}, SE = {se_theil:.4f}, 95% CI = [{ci_theil[0]:.4f}, {ci_theil[1]:.4f}]")
