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
for col in ["p03", "p07", "p11", "p48", "condact", "empleo", "vi02", "vi04a", "vi06", "vi09", "vi10", "vi12", "fexp", "ingpc"]:
    if col in df.columns:
        df[col] = pd.to_numeric(df[col], errors="coerce")

df["fexp"] = df["fexp"].fillna(1.0)
df["ingpc"] = df["ingpc"].fillna(0.0)

# Household size computation for overcrowding (hacinamiento)
hh_size = df.groupby(["id_vivienda", "id_hogar"]).size().reset_index(name="miembros")
df = pd.merge(df, hh_size, on=["id_vivienda", "id_hogar"], how="left")

# Define the 12 indicators at the household level (principle of solidarity)

# 1. Inasistencia a educación básica y bachillerato
df["ind_inasistencia"] = np.where((df["p03"] >= 5) & (df["p03"] <= 17) & (df["p07"] == 2), 1, 0)

# 2. No acceso a educación superior por razones económicas
df["ind_no_educ_superior"] = np.where((df["p03"] >= 18) & (df["p03"] <= 29) & (df["p11"] == 1), 1, 0)

# 3. Logro educativo incompleto (18+ años con nnivins <= 3, i.e., sin terminar educación básica/bachillerato)
df["ind_logro_educ"] = np.where((df["p03"] >= 18) & (df["nnivins"].astype(float) <= 3), 1, 0)

# 4. Empleo infantil y adolescent (menores de 5 a 17 años ocupados: condact in [1, 2, 3, 4, 5])
df["ind_empleo_infantil"] = np.where((df["p03"] >= 5) & (df["p03"] <= 17) & (df["condact"].isin([1, 2, 3, 4, 5])), 1, 0)

# 5. Desempleo o empleo inadecuado (PEA condact 1-7 que no tiene empleo pleno/adecuado: condact in [2, 3, 4, 5, 6, 7])
df["ind_desempleo_inadecuado"] = np.where(df["condact"].isin([2, 3, 4, 5, 6, 7]), 1, 0)

# 6. No contribución al sistema de pensiones (ocupados condact in [1,2,3,4,5] que no cotizan p48 not in [1,2,3])
df["ind_no_pension"] = np.where(df["condact"].isin([1, 2, 3, 4, 5]) & (~df["p48"].isin([1, 2, 3])), 1, 0)

# 7. Pobreza extrema por ingresos (ingpc < 50.63)
df["ind_pobreza_extrema"] = np.where(df["ingpc"] < 50.63, 1, 0)

# 8. Sin servicio de agua por red pública (vi10 != 1)
df["ind_agua"] = np.where(df["vi10"] != 1, 1, 0)

# 9. Hacinamiento (miembros / vi06 > 3)
df["ind_hacinamiento"] = np.where(df["vi06"] > 0, np.where(df["miembros"] / df["vi06"] > 3, 1, 0), 0)

# 10. Déficit habitacional (materiales inadecuados en piso, paredes o techo)
df["ind_deficit_habitacional"] = np.where(df["vi02"].isin([5, 6, 7]) | df["vi04a"].isin([5, 6]), 1, 0)

# 11. Sin saneamiento de excretas (vi09 != 1 & vi09 != 2)
df["ind_saneamiento"] = np.where(~df["vi09"].isin([1, 2]), 1, 0)

# 12. Sin servicio de recolección de basura (vi12 != 1)
df["ind_basura"] = np.where(df["vi12"] != 1, 1, 0)

# --- Agregación a nivel de hogar ---
hogar_cols = [
    "ind_inasistencia", "ind_no_educ_superior", "ind_logro_educ", 
    "ind_empleo_infantil", "ind_desempleo_inadecuado", "ind_no_pension",
    "ind_pobreza_extrema", "ind_agua", "ind_hacinamiento", 
    "ind_deficit_habitacional", "ind_saneamiento", "ind_basura"
]

hh_priv = df.groupby(["id_vivienda", "id_hogar"])[hogar_cols].max().reset_index()

# Renombrar columnas agregadas
hh_priv.columns = ["id_vivienda", "id_hogar"] + [f"priv_{col[4:]}" for col in hogar_cols]

# Volver a fusionar con df
df = pd.merge(df, hh_priv, on=["id_vivienda", "id_hogar"], how="left")

# Ponderaciones oficiales:
w_edu = 0.25 / 3.0
w_trab = 0.25 / 3.0
w_salud = 0.25 / 2.0
w_hab = 0.25 / 4.0

df["c_i"] = (
    w_edu * (df["priv_inasistencia"] + df["priv_no_educ_superior"] + df["priv_logro_educ"]) +
    w_trab * (df["priv_empleo_infantil"] + df["priv_desempleo_inadecuado"] + df["priv_no_pension"]) +
    w_salud * (df["priv_pobreza_extrema"] + df["priv_agua"]) +
    w_hab * (df["priv_hacinamiento"] + df["priv_deficit_habitacional"] + df["priv_saneamiento"] + df["priv_basura"])
)

# Umbral k = 0.3333 (un tercio o más de privaciones ponderadas)
df["ipm_pobre"] = np.where(df["c_i"] >= 0.3333, 1, 0)

# Calcular Incidencia (H), Intensidad (A) e IPM (M0)
total_w = df["fexp"].sum()
h_tasa = (df[df["ipm_pobre"] == 1]["fexp"].sum() / total_w) * 100

pobres = df[df["ipm_pobre"] == 1]
if len(pobres) > 0:
    a_intensidad = np.average(pobres["c_i"], weights=pobres["fexp"]) * 100
else:
    a_intensidad = 0.0

m0 = (h_tasa / 100.0) * (a_intensidad / 100.0)

print(f"--- RESULTADOS IPM 12 INDICADORES (CON AGREGACIÓN HOGAR) ---")
print(f"Tasa de Incidencia (H): {h_tasa:.2f}%")
print(f"Intensidad media (A): {a_intensidad:.2f}%")
print(f"IPM Ajustado (M0): {m0:.4f}")

print("\n--- Desglose de Privaciones del Hogar (Expandido a Personas) ---")
for col in [f"priv_{col[4:]}" for col in hogar_cols]:
    val_pond = (df[df[col] == 1]["fexp"].sum() / total_w) * 100
    print(f"{col}: {val_pond:.2f}%")
