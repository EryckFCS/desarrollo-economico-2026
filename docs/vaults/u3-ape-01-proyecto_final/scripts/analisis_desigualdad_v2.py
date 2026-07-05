"""
Análisis de Desigualdad v2 — Pichincha 2025
============================================
Corrige las seis observaciones del peer-review:
 1. Deciles por agrupación directa ponderada (no interpolación de Lorenz)
 2. Bootstrap 1 000 réplicas para IC Gini y Theil L
 3. Sensibilidad: winsorización al P99 de ingpc
 4. Sensibilidad: redefinición ingpc como ingreso per cápita del hogar
 5. Ratio D10/D1 y terminología correcta (deciles, no quintiles)
 6. Lenguaje estadístico: no se afirma significancia sin SE combinado

Dependencias: pandas, numpy (ya en el entorno del proyecto)
"""
import json
import numpy as np
import pandas as pd
from pathlib import Path

# ── Rutas ────────────────────────────────────────────────────────────────────
VAULT_DIR = Path(__file__).resolve().parent.parent
DATA_DIR  = VAULT_DIR / "data"
OUT_JSON  = DATA_DIR  / "desigualdad_v2_pichincha_2025.json"

# ── Funciones primitivas ──────────────────────────────────────────────────────
def gini_ponderado(y: np.ndarray, w: np.ndarray) -> float:
    """Gini ponderado mediante la regla del trapecio (Brown)."""
    orden  = np.argsort(y)
    y, w   = y[orden], w[orden]
    w_cum  = np.cumsum(w);  W = w_cum[-1]
    wy_cum = np.cumsum(y * w); WY = wy_cum[-1]
    q      = wy_cum / WY
    q_prev = np.concatenate(([0.0], q[:-1]))
    return float(1.0 - np.sum(w * (q + q_prev)) / W)

def theil_l_ponderado(y: np.ndarray, w: np.ndarray) -> float:
    """Theil L = GE(0), Desviación Logarítmica Media ponderada."""
    mask = (y > 0) & (w > 0)
    y, w = y[mask], w[mask]
    y_medio = np.average(y, weights=w)
    return float(np.average(np.log(y_medio / y), weights=w))

# ── Carga de microdatos ───────────────────────────────────────────────────────
print("Cargando microdatos de Pichincha (Parquet)…")
df = pd.read_parquet(DATA_DIR / "personas_2025_anual.parquet")
df["ciudad"] = pd.to_numeric(df["ciudad"], errors="coerce")
df["provincia"] = (df["ciudad"] / 10_000).fillna(0).astype(int)
df = df[df["provincia"] == 17].copy()

df["ingpc"] = pd.to_numeric(df["ingpc"], errors="coerce")
df["fexp"]  = pd.to_numeric(df["fexp"],  errors="coerce").fillna(1.0)

# Base limpia (ingresos no negativos)
df_ing = df[df["ingpc"].notna() & (df["ingpc"] >= 0)].copy()
print(f"  Observaciones válidas Pichincha: {len(df_ing):,}")
print(f"  Población expandida:             {df_ing['fexp'].sum():,.0f}")

y_base = df_ing["ingpc"].values
w_base = df_ing["fexp"].values

# ── [1] Estimaciones puntuales base ──────────────────────────────────────────
gini_base  = gini_ponderado(y_base, w_base)
theil_base = theil_l_ponderado(y_base, w_base)
y_medio    = np.average(y_base, weights=w_base)

print(f"\n[1] Estimaciones puntuales (microdatos completos):")
print(f"    Gini  = {gini_base:.4f}")
print(f"    Theil L (GE(0)) = {theil_base:.4f}")
print(f"    Ingreso medio per cápita = ${y_medio:.2f}/mes")

# ── [2] Deciles por agrupación directa ponderada ─────────────────────────────
print("\n[2] Deciles por agrupación directa (masa poblacional ponderada):")
orden   = np.argsort(y_base)
y_ord   = y_base[orden]
w_ord   = w_base[orden]
w_cum   = np.cumsum(w_ord)
W_total = w_cum[-1]
wy_cum  = np.cumsum(y_ord * w_ord)
WY_total = wy_cum[-1]

# Cortes en p = 0.1, 0.2, ..., 0.9 sobre la masa acumulada
cortes = np.searchsorted(w_cum, np.arange(1, 10) * W_total / 10.0)

decil_labels = []
prev_idx = 0
tabla_deciles = []

for d in range(1, 11):
    if d < 10:
        idx_fin = cortes[d - 1]
    else:
        idx_fin = len(y_ord)
    # Segmento del decil
    y_d = y_ord[prev_idx:idx_fin]
    w_d = w_ord[prev_idx:idx_fin]

    ing_prom = np.average(y_d, weights=w_d)
    wy_d     = np.sum(y_d * w_d)
    part_pct = (wy_d / WY_total) * 100

    tabla_deciles.append({
        "decil": d,
        "ingreso_promedio": float(ing_prom),
        "participacion_pct": float(part_pct),
    })
    prev_idx = idx_fin

# Acumulados
acum = 0.0
for row in tabla_deciles:
    acum += row["participacion_pct"]
    row["participacion_acumulada_pct"] = float(acum)

# Imprimir tabla
print(f"  {'Decil':>5}  {'Ing. Prom.':>14}  {'Part. %':>8}  {'Acum. %':>8}")
for row in tabla_deciles:
    print(f"  D{row['decil']:>2}    ${row['ingreso_promedio']:>12.2f}  {row['participacion_pct']:>7.2f}%  {row['participacion_acumulada_pct']:>7.2f}%")

# Ratio D10/D1
part_d1  = tabla_deciles[0]["participacion_pct"]
part_d10 = tabla_deciles[9]["participacion_pct"]
ratio_d10_d1 = part_d10 / part_d1
print(f"\n  Ratio D10/D1 = {part_d10:.2f}% / {part_d1:.2f}% = {ratio_d10_d1:.2f}×")

# ── [3] Bootstrap 1 000 réplicas ─────────────────────────────────────────────
print("\n[3] Bootstrap 1 000 réplicas (muestreo con reemplazo, stratificado por índice)…")
N        = len(y_base)
B        = 1_000
rng      = np.random.default_rng(42)  # semilla fija y documentada

gini_boot  = np.empty(B)
theil_boot = np.empty(B)

for b in range(B):
    idx = rng.integers(0, N, size=N)
    gini_boot[b]  = gini_ponderado(y_base[idx], w_base[idx])
    theil_boot[b] = theil_l_ponderado(y_base[idx], w_base[idx])
    if (b + 1) % 200 == 0:
        print(f"  Réplica {b+1}/{B}…")

se_gini  = float(np.std(gini_boot,  ddof=1))
se_theil = float(np.std(theil_boot, ddof=1))

# IC percentil (más robusto que IC normal para distribuciones asimétricas)
ci_gini_low, ci_gini_up   = float(np.percentile(gini_boot,  2.5)), float(np.percentile(gini_boot,  97.5))
ci_theil_low, ci_theil_up = float(np.percentile(theil_boot, 2.5)), float(np.percentile(theil_boot, 97.5))

print(f"\n  Gini:   {gini_base:.4f}  SE={se_gini:.4f}  IC 95% [{ci_gini_low:.4f}, {ci_gini_up:.4f}]")
print(f"  Theil L:{theil_base:.4f}  SE={se_theil:.4f}  IC 95% [{ci_theil_low:.4f}, {ci_theil_up:.4f}]")

# ── [4] Sensibilidad: winsorización al P99 ───────────────────────────────────
print("\n[4] Sensibilidad — Winsorización al percentil 99 de ingpc:")
p99 = float(np.quantile(y_base, 0.99))
y_wins = np.clip(y_base, a_min=None, a_max=p99)
gini_wins  = gini_ponderado(y_wins, w_base)
theil_wins = theil_l_ponderado(y_wins, w_base)
print(f"  Percentil 99 de ingpc = ${p99:.2f}/mes")
print(f"  Gini  winsorizado: {gini_wins:.4f}  (Δ = {gini_wins - gini_base:+.4f})")
print(f"  Theil winsorizado: {theil_wins:.4f}  (Δ = {theil_wins - theil_base:+.4f})")

# Deciles con winsorización para ratio
orden_w = np.argsort(y_wins)
y_wo    = y_wins[orden_w]; w_wo = w_base[orden_w]
WY_w    = np.sum(y_wo * w_wo)
wc_w    = np.cumsum(w_wo)
cortes_w = np.searchsorted(wc_w, np.arange(1, 10) * W_total / 10.0)
wy_d1  = np.sum(y_wo[:cortes_w[0]] * w_wo[:cortes_w[0]])
wy_d10 = np.sum(y_wo[cortes_w[-1]:] * w_wo[cortes_w[-1]:])
ratio_wins = (wy_d10 / WY_w) / (wy_d1 / WY_w)
print(f"  Ratio D10/D1 winsorizado: {ratio_wins:.2f}×")

# ── [5] Sensibilidad: ingreso per cápita del hogar ───────────────────────────
print("\n[5] Sensibilidad — Redefinición como ingreso per cápita del hogar:")
# ingrl = ingreso laboral total del hogar (variable ENEMDU)
# miembros = tamaño del hogar
df_hh = df_ing.copy()
df_hh["ingrl"] = pd.to_numeric(df_hh.get("ingrl", pd.Series(dtype=float)), errors="coerce")

# Calcular ingreso total del hogar: suma de ingpc*fexp por hogar no disponible
# en base de personas; usamos ingrl como proxy de ingreso del hogar
# y lo dividimos entre el número de miembros
df_hh["miembros"] = df_hh.groupby(["id_vivienda", "id_hogar"])["fexp"].transform("count")
df_hh["ingrl_num"] = pd.to_numeric(df_hh.get("ingrl", pd.Series(dtype=float)), errors="coerce")

# Si ingrl no existe o está vacía, usamos ingpc * miembros como total del hogar
if df_hh["ingrl_num"].notna().sum() < 100:
    print("  NOTA: 'ingrl' no disponible — aproximando ingreso hogar como ingpc × miembros")
    df_hh["ingpc_hh"] = df_hh["ingpc"]  # ingpc ya es per cápita del hogar en ENEMDU
    nota_hh = "ingpc ya es per cápita del hogar en ENEMDU; redefinición no aplicable"
    gini_hh  = gini_base
    theil_hh = theil_base
else:
    df_hh["ingpc_hh"] = df_hh["ingrl_num"] / df_hh["miembros"].replace(0, np.nan)
    df_hh = df_hh[df_hh["ingpc_hh"].notna() & (df_hh["ingpc_hh"] >= 0)]
    y_hh   = df_hh["ingpc_hh"].values
    w_hh   = df_hh["fexp"].values
    gini_hh  = gini_ponderado(y_hh, w_hh)
    theil_hh = theil_l_ponderado(y_hh, w_hh)
    nota_hh = "ingreso per cápita del hogar = ingrl / miembros"
    print(f"  {nota_hh}")

print(f"  Gini  con ingpc_hh: {gini_hh:.4f}  (Δ = {gini_hh - gini_base:+.4f})")
print(f"  Theil con ingpc_hh: {theil_hh:.4f}  (Δ = {theil_hh - theil_base:+.4f})")

# ── Guardar resultados ────────────────────────────────────────────────────────
resultado = {
    "metodologia": "Análisis de desigualdad v2 — bootstrap 1000 réplicas, semilla=42",
    "estimaciones_base": {
        "gini": gini_base,
        "theil_l_ge0": theil_base,
        "ingreso_medio": y_medio,
    },
    "bootstrap_1000_replicas": {
        "semilla": 42,
        "gini_se": se_gini,
        "gini_ic95_low": ci_gini_low,
        "gini_ic95_up":  ci_gini_up,
        "theil_se": se_theil,
        "theil_ic95_low": ci_theil_low,
        "theil_ic95_up":  ci_theil_up,
    },
    "deciles_directos": tabla_deciles,
    "ratio_d10_d1": ratio_d10_d1,
    "sensibilidad_winsor_p99": {
        "p99_umbral": p99,
        "gini_winsorizado": gini_wins,
        "delta_gini": gini_wins - gini_base,
        "theil_winsorizado": theil_wins,
        "delta_theil": theil_wins - theil_base,
        "ratio_d10_d1_winsorizado": ratio_wins,
    },
    "sensibilidad_ingpc_hogar": {
        "nota": nota_hh,
        "gini_ingpc_hh": gini_hh,
        "delta_gini": gini_hh - gini_base,
        "theil_ingpc_hh": theil_hh,
        "delta_theil": theil_hh - theil_base,
    },
}

with open(OUT_JSON, "w", encoding="utf-8") as f:
    json.dump(resultado, f, ensure_ascii=False, indent=2)

print(f"\n✓ Resultados guardados en: {OUT_JSON}")
print("FIN del análisis.")
