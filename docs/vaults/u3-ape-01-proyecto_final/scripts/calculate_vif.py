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
for col in ["p03", "nnivins", "vi06", "fexp"]:
    df[col] = pd.to_numeric(df[col], errors="coerce")

df["fexp"] = df["fexp"].fillna(1.0)

# Household size
hh_size = df.groupby(["id_vivienda", "id_hogar"]).size().reset_index(name="miembros")
df = pd.merge(df, hh_size, on=["id_vivienda", "id_hogar"], how="left")

# Select clean sample
vif_df = df[["p03", "nnivins", "miembros", "fexp"]].dropna()

# We want VIF for: p03, nnivins, miembros
variables = ["p03", "nnivins", "miembros"]

# We will run weighted linear regressions in numpy to find R^2 for each
for target in variables:
    predictors = [v for v in variables if v != target]
    
    # Construct X matrix with constant
    X = np.column_stack([np.ones(len(vif_df)), vif_df[predictors].values])
    y = vif_df[target].values
    w = vif_df["fexp"].values
    
    # Weighted Least Squares (WLS) transformation
    X_w = X * np.sqrt(w)[:, np.newaxis]
    y_w = y * np.sqrt(w)
    
    beta, residuals, rank, s = np.linalg.lstsq(X_w, y_w, rcond=None)
    
    # Total sum of squares (weighted)
    y_weighted_mean = np.average(y, weights=w)
    ss_tot = np.sum(w * (y - y_weighted_mean) ** 2)
    
    # Residual sum of squares (weighted)
    predictions = X.dot(beta)
    ss_res = np.sum(w * (y - predictions) ** 2)
    
    r_squared = 1.0 - (ss_res / ss_tot)
    vif = 1.0 / (1.0 - r_squared)
    
    print(f"Variable: {target} | R^2 = {r_squared:.4f} | VIF = {vif:.4f}")
