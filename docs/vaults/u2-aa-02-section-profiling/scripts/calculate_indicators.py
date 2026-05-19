#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
Quantitative Calculation Suite for Human Development Indicators (HDI and GII)
Provides high-fidelity, step-by-step mathematical calculations for academic replication.
"""

import math
import os
import sys
from pathlib import Path

# Invariant: ensure scripts folder has access to parent folder and loguru
# We can use standard logging to avoid dependency issues or use loguru if available
try:
    from loguru import logger
except ImportError:
    import logging
    logging.basicConfig(level=logging.INFO)
    logger = logging.getLogger("calculate_indicators")

# Paths setup
SCRIPT_DIR = Path(__file__).resolve().parent
VAULT_DIR = SCRIPT_DIR.parent
LOG_DIR = VAULT_DIR / "logs"
LOG_DIR.mkdir(parents=True, exist_ok=True)

# Add logger output file if using loguru
if 'logger' in globals() and hasattr(logger, "add"):
    logger.add(LOG_DIR / "execution.log", rotation="10 MB", level="INFO")

def calculate_hdi(le, eys, mys, gnipc, country_name="Simulated Country"):
    """
    Calculates the Human Development Index (HDI) step-by-step.
    Goalposts:
        Life Expectancy (LE): min 20, max 85
        Expected Years of Schooling (EYS): min 0, max 18
        Mean Years of Schooling (MYS): min 0, max 15
        GNI per capita (GNIpc): min 100, max 75,000 (constant 2017 PPP $)
    """
    logger.info(f"--- Calculating HDI for {country_name} ---")
    
    # 1. Health Index
    le_min, le_max = 20.0, 85.0
    i_health = (le - le_min) / (le_max - le_min)
    logger.info(f"Life Expectancy: {le} years -> Health Index = ({le} - 20) / (85 - 20) = {i_health:.4f}")
    
    # 2. Education Index
    eys_min, eys_max = 0.0, 18.0
    mys_min, mys_max = 0.0, 15.0
    i_eys = (eys - eys_min) / (eys_max - eys_min)
    i_mys = (mys - mys_min) / (mys_max - mys_min)
    i_education = (i_eys + i_mys) / 2.0
    logger.info(f"EYS: {eys} years -> Index = {i_eys:.4f}")
    logger.info(f"MYS: {mys} years -> Index = {i_mys:.4f}")
    logger.info(f"Education Index = ({i_eys:.4f} + {i_mys:.4f}) / 2 = {i_education:.4f}")
    
    # 3. Income Index
    gni_min, gni_max = 100.0, 75000.0
    i_income = (math.log(gnipc) - math.log(gni_min)) / (math.log(gni_max) - math.log(gni_min))
    logger.info(f"GNI per capita: ${gnipc:,.2f} -> Income Index = (ln({gnipc}) - ln(100)) / (ln(75000) - ln(100)) = {i_income:.4f}")
    
    # 4. Geometric Mean (HDI)
    hdi = (i_health * i_education * i_income) ** (1.0 / 3.0)
    logger.info(f"HDI = ({i_health:.4f} * {i_education:.4f} * {i_income:.4f})^(1/3) = {hdi:.4f}")
    
    # Classification
    if hdi >= 0.800:
        classif = "Muy Alto"
    elif hdi >= 0.700:
        classif = "Alto"
    elif hdi >= 0.550:
        classif = "Medio"
    else:
        classif = "Bajo"
    logger.info(f"HDI Classification: {classif}")
    
    return {
        "i_health": i_health,
        "i_education": i_education,
        "i_income": i_income,
        "hdi": hdi,
        "classification": classif
    }

def calculate_gii(mmr, abr, pr_f, se_f, se_m, lfpr_f, lfpr_m, country_name="Simulated Country"):
    """
    Calculates the Gender Inequality Index (GII) step-by-step.
    Indicators:
        MMR: Maternal Mortality Ratio (deaths per 100k live births), min 10 (truncation), max 1000
        ABR: Adolescent Birth Rate (births per 1000 women aged 15-19), min 0.1 (truncation)
        PR_F: Female Share of Parliamentary Seats (0-1)
        SE_F, SE_M: Share of population with some secondary education (0-1)
        LFPR_F, LFPR_M: Labor Force Participation Rate (0-1)
    """
    logger.info(f"--- Calculating GII for {country_name} ---")
    
    # Truncate MMR and ABR
    mmr_truncated = max(10.0, min(1000.0, mmr))
    abr_truncated = max(0.1, abr)
    
    # Zero treatment for Parliamentary Seats (PR)
    pr_f_treated = max(0.001, pr_f)
    pr_m_treated = max(0.001, 1.0 - pr_f)
    
    logger.info(f"Inputs (Treated/Truncated): MMR={mmr_truncated}, ABR={abr_truncated}, PR_F={pr_f_treated:.4f}")
    
    # 1. Female Index (G_F)
    h_f = ( (10.0 / mmr_truncated) * (1.0 / abr_truncated) ) ** 0.5
    e_f = (pr_f_treated * se_f) ** 0.5
    l_f = lfpr_f
    g_f = (h_f * e_f * l_f) ** (1.0 / 3.0)
    logger.info("Female Dimension Indices:")
    logger.info(f"  Health (H_F) = ((10 / {mmr_truncated}) * (1 / {abr_truncated}))^(1/2) = {h_f:.4f}")
    logger.info(f"  Empowerment (E_F) = ({pr_f_treated:.4f} * {se_f:.4f})^(1/2) = {e_f:.4f}")
    logger.info(f"  Labor (L_F) = {l_f:.4f}")
    logger.info(f"  G_F = ({h_f:.4f} * {e_f:.4f} * {l_f:.4f})^(1/3) = {g_f:.4f}")
    
    # 2. Male Index (G_M)
    h_m = 1.0
    e_m = (pr_m_treated * se_m) ** 0.5
    l_m = lfpr_m
    g_m = (h_m * e_m * l_m) ** (1.0 / 3.0)
    logger.info("Male Dimension Indices:")
    logger.info(f"  Health (H_M) = 1.0")
    logger.info(f"  Empowerment (E_M) = ({pr_m_treated:.4f} * {se_m:.4f})^(1/2) = {e_m:.4f}")
    logger.info(f"  Labor (L_M) = {l_m:.4f}")
    logger.info(f"  G_M = (1.0 * {e_m:.4f} * {l_m:.4f})^(1/3) = {g_m:.4f}")
    
    # 3. Harmonic Mean (Harmonic_G_F_G_M)
    harmonic_g = 2.0 / ( (1.0 / g_f) + (1.0 / g_m) )
    logger.info(f"Harmonic Mean = 2 / ( (1 / {g_f:.4f}) + (1 / {g_m:.4f}) ) = {harmonic_g:.4f}")
    
    # 4. Reference Standard (G_bar)
    h_bar = (h_f + 1.0) / 2.0
    e_bar = (e_f + e_m) / 2.0
    l_bar = (l_f + l_m) / 2.0
    g_bar = (h_bar * e_bar * l_bar) ** (1.0 / 3.0)
    logger.info("Reference Standard Dimension Averages:")
    logger.info(f"  Mean Health (H_bar) = ({h_f:.4f} + 1.0) / 2 = {h_bar:.4f}")
    logger.info(f"  Mean Empowerment (E_bar) = ({e_f:.4f} + {e_m:.4f}) / 2 = {e_bar:.4f}")
    logger.info(f"  Mean Labor (L_bar) = ({l_f:.4f} + {l_m:.4f}) / 2 = {l_bar:.4f}")
    logger.info(f"  Reference Standard (G_bar) = ({h_bar:.4f} * {e_bar:.4f} * {l_bar:.4f})^(1/3) = {g_bar:.4f}")
    
    # 5. GII Calculation
    gii = 1.0 - (harmonic_g / g_bar)
    logger.info(f"GII = 1 - ({harmonic_g:.4f} / {g_bar:.4f}) = {gii:.4f}")
    
    return {
        "g_f": g_f,
        "g_m": g_m,
        "harmonic_mean": harmonic_g,
        "reference_standard": g_bar,
        "gii": gii
    }

def main():
    # Run the models with standardized hypothetical data
    hdi_res = calculate_hdi(le=75.0, eys=14.5, mys=10.2, gnipc=12500.0, country_name="Ecuador Simulado")
    gii_res = calculate_gii(mmr=140.0, abr=65.0, pr_f=0.38, se_f=0.64, se_m=0.70, lfpr_f=0.52, lfpr_m=0.78, country_name="Ecuador Simulado")
    
    # Export calculations to a markdown summary for report embedding
    output_path = VAULT_DIR / "calculated_results.md"
    with open(output_path, "w", encoding="utf-8") as f:
        f.write("# Resultados Cuantitativos Calculados Paso a Paso\n\n")
        f.write("## 1. Índice de Desarrollo Humano (IDH)\n\n")
        f.write("| Dimensión | Indicador Crudo | Valor Normalizado | Fórmula |\n")
        f.write("| --- | --- | --- | --- |\n")
        f.write(f"| **Salud** | Esperanza de vida: 75.0 años | **{hdi_res['i_health']:.4f}** | $(LE - 20) / (85 - 20)$ |\n")
        f.write(f"| **Educación** | Años Esperados: 14.5 / Años Promedio: 10.2 | **{hdi_res['i_education']:.4f}** | Promedio aritmético de índices de EYS y MYS |\n")
        f.write(f"| **Ingreso** | INB per cápita: $12,500.00 | **{hdi_res['i_income']:.4f}** | $(ln(GNIpc) - ln(100)) / (ln(75000) - ln(100))$ |\n\n")
        f.write(f"**IDH Consolidado (Media Geométrica):** **{hdi_res['hdi']:.4f}** (Clasificación: **{hdi_res['classification']}**)\n\n")
        
        f.write("## 2. Índice de Desigualdad de Género (IDG)\n\n")
        f.write("| Componente | Salud (H) | Empoderamiento (E) | Mercado Laboral (L) | Índice de Dimensión (G) |\n")
        f.write("| --- | --- | --- | --- | --- |\n")
        f.write(f"| **Mujeres ($F$)** | {((10.0/140.0)*(1.0/65.0))**0.5:.4f} (MMR=140, ABR=65) | {((0.38*0.64)**0.5):.4f} (PR=38%, SE=64%) | 0.520 (LFPR=52%) | **{gii_res['g_f']:.4f}** |\n")
        f.write(f"| **Hombres ($M$)** | 1.0000 (Fijo) | {((0.62*0.70)**0.5):.4f} (PR=62%, SE=70%) | 0.780 (LFPR=78%) | **{gii_res['g_m']:.4f}** |\n")
        f.write(f"| **Promedio ($\\bar{{G}}$)** | {gii_res['reference_standard']:.4f} (Ref) | | | **Estándar de Referencia: {gii_res['reference_standard']:.4f}** |\n\n")
        f.write(f"- **Media Armónica ($H_{{GM}}$):** **{gii_res['harmonic_mean']:.4f}**\n")
        f.write(f"- **Índice de Desigualdad de Género (GII) Final:** **{gii_res['gii']:.4f}**\n")
        
    logger.info(f"Results successfully written to {output_path}")

if __name__ == "__main__":
    main()
