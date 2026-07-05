"""
Figuras modernas v2 — Desigualdad Pichincha 2025
Diseño: fondo blanco, paleta azul profundo-coral, tipografía Roboto/DejaVu,
bordes mínimos, anotaciones limpias, estilo editorial Q1.
"""
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
import matplotlib.ticker as mticker
from matplotlib.colors import LinearSegmentedColormap
from pathlib import Path

# ── Rutas ─────────────────────────────────────────────────────────────────────
VAULT = Path(__file__).resolve().parent.parent
DATA  = VAULT / "data"
OUT   = VAULT / "assets"

# ── Paleta editorial ──────────────────────────────────────────────────────────
AZUL_OSCURO  = "#1B3A6B"   # títulos, línea Lorenz
AZUL_MED     = "#2E6DB4"   # acentos
AZUL_CLARO   = "#A8C8E8"   # relleno Lorenz / barras D1-D9
CORAL        = "#E05C3A"   # línea 45°, D10 highlight
GRIS_LINEA   = "#D0D7E3"   # gridlines
GRIS_TEXTO   = "#4A5568"   # labels secundarios
BLANCO       = "#FFFFFF"

# ── Estilo global ─────────────────────────────────────────────────────────────
plt.rcParams.update({
    "figure.facecolor":  BLANCO,
    "axes.facecolor":    BLANCO,
    "axes.edgecolor":    GRIS_LINEA,
    "axes.linewidth":    0.8,
    "axes.grid":         True,
    "grid.color":        GRIS_LINEA,
    "grid.linewidth":    0.6,
    "grid.linestyle":    "-",
    "axes.spines.top":   False,
    "axes.spines.right": False,
    "font.family":       "DejaVu Sans",
    "font.size":         10,
    "axes.titlesize":    13,
    "axes.labelsize":    10.5,
    "xtick.labelsize":   9.5,
    "ytick.labelsize":   9.5,
    "legend.fontsize":   9,
    "legend.frameon":    True,
    "legend.framealpha": 1.0,
    "legend.edgecolor":  GRIS_LINEA,
    "savefig.dpi":       300,
    "savefig.bbox":      "tight",
    "savefig.facecolor": BLANCO,
})

# ── Carga de microdatos ────────────────────────────────────────────────────────
print("Cargando datos…")
df = pd.read_parquet(DATA / "personas_2025_anual.parquet")
df["ciudad"]    = pd.to_numeric(df["ciudad"], errors="coerce")
df["provincia"] = (df["ciudad"] / 10_000).fillna(0).astype(int)
df = df[df["provincia"] == 17]
df["ingpc"] = pd.to_numeric(df["ingpc"], errors="coerce")
df["fexp"]  = pd.to_numeric(df["fexp"],  errors="coerce").fillna(1.0)
df = df[df["ingpc"].notna()].copy()

y = df["ingpc"].values
w = df["fexp"].values

# ── Lorenz ponderada ──────────────────────────────────────────────────────────
orden  = np.argsort(y)
ys, ws = y[orden], w[orden]
wc     = np.cumsum(ws);  W  = wc[-1]
wyc    = np.cumsum(ys * ws); WY = wyc[-1]
lorenz_x = np.concatenate(([0.], wc / W))
lorenz_y = np.concatenate(([0.], wyc / WY))

# ── Deciles ────────────────────────────────────────────────────────────────────
parts = []
cortes = np.searchsorted(wc, np.arange(1, 10) * W / 10)
prev = 0
for d in range(1, 11):
    fin = cortes[d-1] if d < 10 else len(ys)
    parts.append(np.sum(ys[prev:fin] * ws[prev:fin]) / WY * 100)
    prev = fin

decil_labels = [f"D{i}" for i in range(1, 11)]
mean_y = np.average(y, weights=w)

# ─────────────────────────────────────────────────────────────────────────────
# FIGURA 1 — Curva de Lorenz moderna
# ─────────────────────────────────────────────────────────────────────────────
fig, ax = plt.subplots(figsize=(7.5, 6.8))

# Relleno entre las curvas con gradiente suave
ax.fill_between(lorenz_x, lorenz_x, lorenz_y,
                color=AZUL_CLARO, alpha=0.45, zorder=1, label="_nolegend_")

# Banda de 45°
ax.plot([0, 1], [0, 1], color=CORAL, linewidth=1.6,
        linestyle="--", dashes=(6, 4), zorder=2, label="Igualdad perfecta ($G=0$)")

# Curva de Lorenz
ax.plot(lorenz_x, lorenz_y, color=AZUL_OSCURO, linewidth=2.4,
        zorder=3, label="Curva de Lorenz observada")

# Punto destacado: 50% más pobre
idx50 = np.searchsorted(lorenz_x, 0.5)
y50   = lorenz_y[idx50]
ax.plot(0.5, y50, "o", color=CORAL, markersize=7, zorder=4)
ax.annotate(f"50% más pobre\nretiene {y50:.1%} del ingreso",
            xy=(0.5, y50), xytext=(0.32, y50 - 0.10),
            fontsize=8.5, color=AZUL_OSCURO,
            arrowprops=dict(arrowstyle="-|>", color=AZUL_MED, lw=1.2),
            bbox=dict(boxstyle="round,pad=0.3", fc="white", ec=GRIS_LINEA, lw=0.8))

# Caja de estadísticos — sin borde de caja, solo texto alineado
stats_text = (
    "Gini = 0.4532  [$IC_{95\\%}$: 0.4479 – 0.4584]\n"
    "Theil $L$ = 0.3636  [$IC_{95\\%}$: 0.3546 – 0.3729]\n"
    "D10/D1 = 20.36×  ·  $n$ = 46 463\n"
    "ENEMDU Acumulada Anual 2025, INEC"
)
ax.text(0.02, 0.97, stats_text, transform=ax.transAxes,
        fontsize=8.2, va="top", ha="left", color=AZUL_OSCURO,
        bbox=dict(boxstyle="round,pad=0.5", fc="white",
                  ec=AZUL_MED, lw=1.0, alpha=0.95))

ax.set_xlim(0, 1); ax.set_ylim(0, 1)
ax.xaxis.set_major_formatter(mticker.PercentFormatter(xmax=1, decimals=0))
ax.yaxis.set_major_formatter(mticker.PercentFormatter(xmax=1, decimals=0))
ax.set_xlabel("Proporción acumulada de la población (ordenada por ingreso)",
              labelpad=8, color=GRIS_TEXTO)
ax.set_ylabel("Proporción acumulada del ingreso",
              labelpad=8, color=GRIS_TEXTO)
ax.set_title("Curva de Lorenz — Concentración del Ingreso\n"
             "Provincia de Pichincha, 2025",
             fontweight="bold", color=AZUL_OSCURO, pad=14)
ax.legend(loc="upper left", bbox_to_anchor=(0.02, 0.80),
          fancybox=False, borderpad=0.7, labelcolor=GRIS_TEXTO)

# Subtítulo/fuente
fig.text(0.98, 0.01, "Fuente: elaboración propia · ENEMDU Acumulada Anual 2025, INEC",
         ha="right", fontsize=7.5, color=GRIS_TEXTO, style="italic")

plt.tight_layout()
p = OUT / "curva_lorenz_2025.png"
plt.savefig(p)
plt.close()
print(f"  ✓ {p.name}")

# ─────────────────────────────────────────────────────────────────────────────
# FIGURA 2 — Distribución por deciles + línea de ingreso medio
# ─────────────────────────────────────────────────────────────────────────────
# Ingreso promedio real por decil (para etiquetas secundarias)
ingresos_decil = []
prev = 0
for d in range(1, 11):
    fin = cortes[d-1] if d < 10 else len(ys)
    ing = np.average(ys[prev:fin], weights=ws[prev:fin])
    ingresos_decil.append(ing)
    prev = fin

# Color: gradiente azul para D1-D9, coral para D10
colors_bar = [AZUL_CLARO] * 9 + [CORAL]
edge_colors = [AZUL_MED] * 9 + ["#B84020"]

fig, ax = plt.subplots(figsize=(9, 5.8))

x = np.arange(1, 11)
bars = ax.bar(x, parts, color=colors_bar, edgecolor=edge_colors,
              linewidth=0.9, width=0.72, zorder=2)

# Etiqueta de participación (%) sobre cada barra
for i, (bar, p_val) in enumerate(zip(bars, parts)):
    ypos = bar.get_height() + 0.25
    ax.text(bar.get_x() + bar.get_width() / 2, ypos,
            f"{p_val:.1f}%",
            ha="center", va="bottom",
            fontsize=8.5 if i < 9 else 9.5,
            fontweight="bold" if i == 9 else "normal",
            color=CORAL if i == 9 else AZUL_OSCURO)

# Ingreso promedio como etiqueta secundaria bajo el eje x
ax2 = ax.twiny()
ax2.set_xlim(ax.get_xlim())
ax2.set_xticks(x)
ax2.set_xticklabels([f"${v:,.0f}" for v in ingresos_decil],
                    fontsize=7.8, color=GRIS_TEXTO)
ax2.xaxis.set_tick_params(length=0)
ax2.spines["top"].set_visible(False)
ax2.set_xlabel("Ingreso promedio por decil (USD/mes)",
               fontsize=9, color=GRIS_TEXTO, labelpad=6)

# Anotación D10
ax.annotate(
    f"D10 concentra\nel {parts[9]:.1f}% del ingreso",
    xy=(10, parts[9]), xytext=(8.3, 27),
    fontsize=8.5, color=CORAL, fontweight="bold",
    arrowprops=dict(arrowstyle="-|>", color=CORAL, lw=1.3),
    bbox=dict(boxstyle="round,pad=0.4", fc="white", ec=CORAL, lw=0.9)
)

# Referencia equidad perfecta (10%)
ax.axhline(10, color=GRIS_LINEA, linewidth=1.2, linestyle=":",
           zorder=1, label="Participación equitativa (10%)")
ax.text(10.55, 10.3, "10% equitativo", fontsize=7.8, color=GRIS_TEXTO, va="bottom")

ax.set_xticks(x)
ax.set_xticklabels([f"D{i}" for i in range(1, 11)], fontsize=9.5)
ax.set_xlabel("Decil poblacional (D1 = más pobre  →  D10 = más rico)",
              labelpad=8, color=GRIS_TEXTO)
ax.set_ylabel("Participación en el ingreso total (%)",
              labelpad=8, color=GRIS_TEXTO)
ax.set_ylim(0, 40)
ax.set_title("Distribución del Ingreso por Deciles de Población\n"
             "Provincia de Pichincha, 2025 · Gini = 0.4532",
             fontweight="bold", color=AZUL_OSCURO, pad=14)
ax.yaxis.set_major_formatter(mticker.PercentFormatter(xmax=100, decimals=0))

# Leyenda manual
patch_d9  = mpatches.Patch(facecolor=AZUL_CLARO, edgecolor=AZUL_MED, label="D1 – D9")
patch_d10 = mpatches.Patch(facecolor=CORAL, edgecolor="#B84020", label="D10 (más rico)")
ax.legend(handles=[patch_d9, patch_d10], loc="upper left",
          fancybox=False, borderpad=0.7, labelcolor=GRIS_TEXTO)

fig.text(0.98, 0.01, "Fuente: elaboración propia · ENEMDU Acumulada Anual 2025, INEC",
         ha="right", fontsize=7.5, color=GRIS_TEXTO, style="italic")

plt.tight_layout()
p_fig2 = OUT / "distribucion_ingreso_deciles.png"
plt.savefig(p_fig2)
plt.close()
print(f"  ✓ {p_fig2.name}")
print("FIN.")
