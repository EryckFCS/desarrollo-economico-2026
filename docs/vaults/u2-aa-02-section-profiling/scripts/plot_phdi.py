#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
PHDI Plotting Utility
Generates a high-fidelity visual contrast of HDI vs. PHDI for key nations
using official 2020 UNDP Human Development Report statistics.
"""

import os
import matplotlib.pyplot as plt
import numpy as np
from pathlib import Path

# Paths setup
SCRIPT_DIR = Path(__file__).resolve().parent
VAULT_DIR = SCRIPT_DIR.parent
ASSETS_DIR = VAULT_DIR / "assets"
ASSETS_DIR.mkdir(parents=True, exist_ok=True)

def generate_plot():
    # Official UNDP 2020 Data
    countries = [
        "Noruega", 
        "Alemania", 
        "Estados Unidos", 
        "Costa Rica", 
        "Ecuador", 
        "Gabón", 
        "Níger"
    ]
    
    hdi = [0.957, 0.947, 0.926, 0.810, 0.759, 0.703, 0.394]
    phdi = [0.814, 0.813, 0.728, 0.793, 0.748, 0.697, 0.393]
    
    # Calculate percentage devaluations
    devaluations = [((h - p) / h) * 100 for h, p in zip(hdi, phdi)]
    
    # Elegant Styling
    plt.rcParams['font.family'] = 'serif'
    plt.rcParams['font.serif'] = ['Times New Roman', 'DejaVu Serif']
    plt.rcParams['text.color'] = '#1A202C'
    plt.rcParams['axes.labelcolor'] = '#1A202C'
    plt.rcParams['xtick.color'] = '#1A202C'
    plt.rcParams['ytick.color'] = '#1A202C'
    
    fig, ax = plt.subplots(figsize=(10, 6.5), dpi=300)
    
    x = np.arange(len(countries))
    width = 0.35  # Bar width
    
    # Premium Harmonious Palette
    # Steel Blue for standard HDI, muted Forest/Slate Gray for adjusted PHDI
    hdi_color = '#3182CE'  # Premium Blue
    phdi_color = '#4A5568'  # Sleek Dark Slate
    
    rects1 = ax.bar(x - width/2, hdi, width, label='IDH Convencional', color=hdi_color, edgecolor='none', alpha=0.9)
    rects2 = ax.bar(x + width/2, phdi, width, label='IDH-P (Ajustado por Presiones Planetarias)', color=phdi_color, edgecolor='none', alpha=0.9)
    
    # Add titles and labels
    ax.set_ylabel('Puntuación de Desarrollo Humano (Escala 0 - 1)', fontsize=11, fontweight='bold', labelpad=12)
    ax.set_title('Brecha de Devaluación del Desarrollo Humano por Presión Ecológica\n(Datos Oficiales del Informe de Desarrollo Humano 2020 - PNUD)', 
                 fontsize=13, fontweight='bold', pad=20, color='#2D3748', ha='center')
    ax.set_xticks(x)
    ax.set_xticklabels(countries, fontsize=11, fontweight='bold')
    ax.set_ylim(0, 1.1)
    
    # Add a beautiful subtle grid
    ax.grid(axis='y', linestyle='--', alpha=0.5, color='#CBD5E0')
    ax.set_axisbelow(True)
    
    # Remove top and right borders for minimalist, modern look
    for spine in ['top', 'right']:
        ax.spines[spine].set_visible(False)
        
    ax.spines['left'].set_color('#CBD5E0')
    ax.spines['bottom'].set_color('#CBD5E0')
    
    # Annotate devaluations with subtle arrows and text boxes
    for i in range(len(countries)):
        val_h = hdi[i]
        val_p = phdi[i]
        dev = devaluations[i]
        
        # Annotate the values above each bar
        ax.text(i - width/2, val_h + 0.015, f"{val_h:.3f}", ha='center', va='bottom', fontsize=8.5, color='#2B6CB0')
        ax.text(i + width/2, val_p + 0.015, f"{val_p:.3f}", ha='center', va='bottom', fontsize=8.5, color='#4A5568')
        
        # Add visual indicators for drops
        if dev > 0.5:
            # Draw dotted red connector line between heights
            ax.plot([i - width/2, i + width/2], [val_h, val_p], color='#E53E3E', linestyle=':', linewidth=1.5)
            # Add a red badge for the devaluation rate
            ax.annotate(
                f"-{dev:.1f}%",
                xy=(i, (val_h + val_p)/2),
                xytext=(0, 10),
                textcoords="offset points",
                bbox=dict(boxstyle="round,pad=0.3", fc="#FFF5F5", ec="#FEB2B2", lw=1),
                fontsize=9,
                fontweight='bold',
                color='#C53030',
                ha='center'
            )
        else:
            # Insignificant pressure
            ax.text(i, val_h + 0.06, "Sin penalización", ha='center', va='bottom', fontsize=8, color='#38A169', fontstyle='italic')
            
    # Premium Legend positioning
    ax.legend(loc='upper right', frameon=True, facecolor='#FFFFFF', edgecolor='#E2E8F0', framealpha=0.9, fontsize=10)
    
    # Add footnote for academic citation
    fig.text(0.1, 0.02, "Fuente: Programa de las Naciones Unidas para el Desarrollo (PNUD), Informe sobre Desarrollo Humano 2020, Tabla 1: PHDI.\nElaborado por: Grupo Colaborativo Condoy - Bustamante.", 
             fontsize=8, color='#718096', style='italic')
    
    plt.tight_layout(rect=[0, 0.04, 1, 1])
    
    # Save high-resolution PNG
    output_png = ASSETS_DIR / "hdi_vs_phdi.png"
    plt.savefig(output_png, bbox_inches='tight')
    plt.close()
    
    print(f"Plot successfully saved to: {output_png}")

if __name__ == "__main__":
    generate_plot()
