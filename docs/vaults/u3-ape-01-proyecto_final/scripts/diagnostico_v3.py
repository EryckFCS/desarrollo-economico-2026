"""
Diagnóstico y correcciones v3 — Pichincha 2025
Responde a las 6 observaciones del peer-review con cómputos reales.
"""
import json
import numpy as np
import pandas as pd
from pathlib import Path

VAULT_DIR = Path(__file__).resolve().parent.parent
DATA_DIR  = VAULT_DIR / "data"

# ── Funciones base ────────────────────────────────────────────────────────────
def gini_w(y, w):
    o = np.argsort(y); y, w = y[o], w[o]
    wc = np.cumsum(w); W = wc[-1]
    wyc = np.cumsum(y * w); WY = wyc[-1]
    q = wyc / WY
    return float(1.0 - np.sum(w * (q + np.concatenate(([0.], q[:-1])))) / W)

def theil_l(y, w):
    mask = (y > 0) & (w > 0)
    y, w = y[mask], w[mask]
    ym = np.average(y, weights=w)
    return float(np.average(np.log(ym / y), weights=w))

# ── Carga cruda ───────────────────────────────────────────────────────────────
print("Cargando microdatos…")
df = pd.read_parquet(DATA_DIR / "personas_2025_anual.parquet")
df["ciudad"]   = pd.to_numeric(df["ciudad"],   errors="coerce")
df["provincia"]= (df["ciudad"] / 10_000).fillna(0).astype(int)
df = df[df["provincia"] == 17].copy()
df["ingpc"] = pd.to_numeric(df["ingpc"], errors="coerce")
df["fexp"]  = pd.to_numeric(df["fexp"],  errors="coerce").fillna(1.0)

n_total = len(df)
print(f"\n── [OBS 1] Trazabilidad de filtros ──────────────────────────────")
print(f"  n total Pichincha (sin filtro):         {n_total:,}")
n_notna = df["ingpc"].notna().sum()
print(f"  n con ingpc no-nulo:                    {n_notna:,}   (missing: {n_total - n_notna})")
n_ge0   = (df["ingpc"].notna() & (df["ingpc"] >= 0)).sum()
print(f"  n con ingpc >= 0 (excluye negativos):   {n_ge0:,}   (negativos: {n_notna - n_ge0})")
n_gt0   = (df["ingpc"].notna() & (df["ingpc"] >  0)).sum()
print(f"  n con ingpc >  0 (excluye ceros):       {n_gt0:,}   (ceros: {n_ge0 - n_gt0})")

df_ge0 = df[df["ingpc"].notna() & (df["ingpc"] >= 0)].copy()
df_gt0 = df[df["ingpc"].notna() & (df["ingpc"] >  0)].copy()

y_ge0 = df_ge0["ingpc"].values; w_ge0 = df_ge0["fexp"].values
y_gt0 = df_gt0["ingpc"].values; w_gt0 = df_gt0["fexp"].values

mean_ge0 = np.average(y_ge0, weights=w_ge0)
mean_gt0 = np.average(y_gt0, weights=w_gt0)
print(f"\n  Ingreso medio con ingpc>=0: ${mean_ge0:.2f}")
print(f"  Ingreso medio con ingpc> 0: ${mean_gt0:.2f}")

# ── [OBS 3] Ceros en Theil ────────────────────────────────────────────────────
print(f"\n── [OBS 3] Tratamiento de ceros para Theil L ────────────────────")
n_zeros = (df_ge0["ingpc"] == 0).sum()
pop_zeros = df_ge0.loc[df_ge0["ingpc"] == 0, "fexp"].sum()
pop_total_ge0 = w_ge0.sum()
print(f"  Observaciones con ingpc = 0: {n_zeros}  (pop. expandida: {pop_zeros:,.0f}; {pop_zeros/pop_total_ge0*100:.3f}% del total)")
gini_ge0  = gini_w(y_ge0, w_ge0)
theil_ge0 = theil_l(y_ge0, w_ge0)   # excluye ceros internamente
gini_gt0  = gini_w(y_gt0, w_gt0)
theil_gt0 = theil_l(y_gt0, w_gt0)
print(f"  Gini  (base >= 0, ceros en Gini, excluidos en Theil): {gini_ge0:.4f}")
print(f"  Gini  (base >  0, misma base para ambos):              {gini_gt0:.4f}")
print(f"  Theil (excluye ceros, base > 0):  {theil_ge0:.4f} / {theil_gt0:.4f}")
print(f"  → Base canónica para ambos índices: ingpc > 0  (n={n_gt0:,})")

# A partir de aquí la base canónica es ingpc > 0
y, w = y_gt0, w_gt0

# ── [OBS 4] Gradiente de winsorización P95/P97.5/P99 ─────────────────────────
print(f"\n── [OBS 4] Gradiente de winsorización ───────────────────────────")
scenarios = []
for pct in [None, 95, 97.5, 99]:
    if pct is None:
        yy = y.copy(); label = "Base (sin wins.)"
    else:
        p = float(np.percentile(y, pct))
        yy = np.clip(y, None, p); label = f"P{pct} (${p:,.2f})"
    g = gini_w(yy, w); t = theil_l(yy, w)
    # Palma: D10 / (D1+D2+D3+D4)
    o = np.argsort(yy); yw = yy[o]; ww = w[o]
    wc = np.cumsum(ww); W = wc[-1]; wyc = np.cumsum(yw*ww); WY=wyc[-1]
    cuts = np.searchsorted(wc, np.arange(1,10)*W/10)
    parts = []
    prev=0
    for d in range(1,11):
        fin = cuts[d-1] if d<10 else len(yw)
        parts.append(np.sum(yw[prev:fin]*ww[prev:fin])/WY)
        prev=fin
    palma = parts[9] / sum(parts[:4])
    # ratio D10/D1
    ratio = parts[9] / parts[0] if parts[0]>0 else float("nan")
    scenarios.append({"label":label,"gini":g,"theil":t,"palma":palma,"ratio":ratio,"pct":pct})
    print(f"  {label:25s}  Gini={g:.4f}  Theil={t:.4f}  Palma={palma:.3f}  D10/D1={ratio:.2f}×")

base = scenarios[0]
print(f"\n  Δ respecto a base:")
for s in scenarios[1:]:
    print(f"  {s['label']:25s}  ΔGini={s['gini']-base['gini']:+.4f}  ΔTheil={s['theil']-base['theil']:+.4f}  ΔPalma={s['palma']-base['palma']:+.3f}")

# ── [OBS 2] Bootstrap IID con nota metodológica ───────────────────────────────
print(f"\n── [OBS 2] Bootstrap 1 000 réplicas (IID) — base canónica ingpc>0 ─")
N = len(y); B = 1_000; rng = np.random.default_rng(42)
gb = np.empty(B); tb = np.empty(B)
for b in range(B):
    idx = rng.integers(0, N, N)
    gb[b] = gini_w(y[idx], w[idx])
    tb[b] = theil_l(y[idx], w[idx])
    if (b+1)%250==0: print(f"  réplica {b+1}/1000")
se_g = float(np.std(gb, ddof=1)); se_t = float(np.std(tb, ddof=1))
ci_g = (float(np.percentile(gb,2.5)), float(np.percentile(gb,97.5)))
ci_t = (float(np.percentile(tb,2.5)), float(np.percentile(tb,97.5)))
print(f"  Gini:    {gini_gt0:.4f}  SE={se_g:.4f}  IC95% [{ci_g[0]:.4f}, {ci_g[1]:.4f}]")
print(f"  Theil L: {theil_gt0:.4f}  SE={se_t:.4f}  IC95% [{ci_t[0]:.4f}, {ci_t[1]:.4f}]")
print(f"  NOTA: bootstrap IID (sin conglomerados) → IC subestiman varianza real del diseño muestral complejo")

# ── Guardar ───────────────────────────────────────────────────────────────────
out = {
    "n_pichincha_total": int(n_total),
    "n_ingpc_notna": int(n_notna),
    "n_ingpc_ge0": int(n_ge0),
    "n_ingpc_gt0": int(n_gt0),
    "n_ceros": int(n_zeros),
    "pop_ceros": float(pop_zeros),
    "base_canonica": "ingpc > 0",
    "gini_base": float(gini_gt0),
    "theil_base": float(theil_gt0),
    "bootstrap_iid_1000": {
        "semilla": 42, "n_obs": int(N),
        "gini_se": se_g, "gini_ci95": list(ci_g),
        "theil_se": se_t, "theil_ci95": list(ci_t),
        "advertencia": "IID sin conglomerados; IC conservadores pero subestiman varianza de diseño complejo"
    },
    "sensibilidad_winsor": [
        {"escenario": s["label"], "gini": s["gini"], "theil": s["theil"],
         "palma": s["palma"], "ratio_d10_d1": s["ratio"]}
        for s in scenarios
    ]
}
p = DATA_DIR / "desigualdad_v3_pichincha_2025.json"
p.write_text(json.dumps(out, ensure_ascii=False, indent=2))
print(f"\n✓ Guardado: {p}")
