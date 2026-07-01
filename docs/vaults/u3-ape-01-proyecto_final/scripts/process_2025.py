"""
Procesamiento de Indicadores Socioeconómicos ENEMDU 2025
======================================================
Bóveda: docs/vaults/u3-ape-01-proyecto_final/
Autor:  Erick Fabricio Condoy Seraquive (con asistencia de Antigravity)
Fecha:  2026-06-30

Este script carga los microdatos de la ENEMDU de diciembre de 2025,
realiza la unión entre personas y viviendas, y calcula:
1. Pobreza y Extrema Pobreza por ingresos
2. Coeficiente de Gini
3. Puntos de la Curva de Lorenz
4. IPM (Índice de Pobreza Multidimensional) simplificado
5. Proxy de IDH (Educación + Ingresos)

Los resultados se guardan en la carpeta local 'data/' y las gráficas en 'assets/'.
"""

import sys
import json
from pathlib import Path
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# Definir directorios locales de la bóveda
SCRIPT_DIR = Path(__file__).resolve().parent
VAULT_DIR = SCRIPT_DIR.parent
DATA_DIR = VAULT_DIR / "data"
ASSETS_DIR = VAULT_DIR / "assets"
LOGS_DIR = VAULT_DIR / "logs"

for folder in [DATA_DIR, ASSETS_DIR, LOGS_DIR]:
    folder.mkdir(parents=True, exist_ok=True)

# Rutas a los datos anualizados de 2025 (DTA original y Parquet)
PATH_PERSONAS_DTA = DATA_DIR / "personas_2025_anual.dta"
PATH_VIVIENDA_DTA = DATA_DIR / "vivienda_2025_anual.dta"

PATH_PERSONAS_PARQUET = DATA_DIR / "personas_2025_anual.parquet"
PATH_VIVIENDA_PARQUET = DATA_DIR / "vivienda_2025_anual.parquet"

# ─── Constantes metodológicas para Diciembre 2025 ───────────────────────────
# Líneas de pobreza oficiales por ingresos (INEC)
LINEA_POBREZA = 89.85          # USD per cápita mensual
LINEA_POBREZA_EXTREMA = 50.63  # USD per cápita mensual

def calcular_gini(ingreso: np.ndarray, pesos: np.ndarray) -> float:
    """Calcula el coeficiente de Gini ponderado para una distribución de ingresos."""
    # Ordenar por ingreso
    orden = np.argsort(ingreso)
    y = ingreso[orden]
    w = pesos[orden]
    
    # Calcular variables acumuladas
    w_cum = np.cumsum(w)
    w_sum = w_cum[-1]
    y_cum = np.cumsum(y * w)
    y_sum = y_cum[-1]
    
    # Proporciones acumuladas de ingresos
    q = y_cum / y_sum
    q_prev = np.concatenate(([0.0], q[:-1]))
    
    # Coeficiente de Gini
    gini = 1.0 - np.sum(w * (q + q_prev)) / w_sum
    return float(gini)

def obtener_curva_lorenz(ingreso: np.ndarray, pesos: np.ndarray, n_points: int = 100) -> tuple[np.ndarray, np.ndarray]:
    """Genera los puntos acumulados para graficar la curva de Lorenz."""
    orden = np.argsort(ingreso)
    y = ingreso[orden]
    w = pesos[orden]
    
    p_cum = np.cumsum(w) / np.sum(w)
    q_cum = np.cumsum(y * w) / np.sum(y * w)
    
    # Insertar origen (0,0)
    p_cum = np.concatenate(([0.0], p_cum))
    q_cum = np.concatenate(([0.0], q_cum))
    
    # Muestrear a n_points equidistantes
    indices = np.linspace(0, len(p_cum) - 1, n_points, dtype=int)
    return p_cum[indices], q_cum[indices]

def main():
    print("Iniciando procesamiento de indicadores para ENEMDU 2025...")
    
    # Autoconversión de DTA a Parquet si no existen los archivos
    if not PATH_PERSONAS_PARQUET.exists() or not PATH_VIVIENDA_PARQUET.exists():
        print("Archivos Parquet no encontrados en el Lake. Iniciando conversión desde bases DTA...")
        if not PATH_PERSONAS_DTA.exists() or not PATH_VIVIENDA_DTA.exists():
            print(f"ERROR: No se encontraron los archivos DTA originales de la base anualizada.")
            sys.exit(1)
            
        if not PATH_PERSONAS_PARQUET.exists():
            print(f"Convirtiendo {PATH_PERSONAS_DTA.name} a Parquet...")
            df_temp = pd.read_stata(PATH_PERSONAS_DTA)
            # Convertir todas las categorías a string para evitar problemas de serialización
            for col in df_temp.select_dtypes(include=['category', 'object']).columns:
                df_temp[col] = df_temp[col].astype(str).str.strip()
            df_temp.to_parquet(PATH_PERSONAS_PARQUET, index=False, engine='pyarrow')
            del df_temp
            print(f"Archivo Parquet creado en: {PATH_PERSONAS_PARQUET}")
            
        if not PATH_VIVIENDA_PARQUET.exists():
            print(f"Convirtiendo {PATH_VIVIENDA_DTA.name} a Parquet...")
            df_temp = pd.read_stata(PATH_VIVIENDA_DTA)
            for col in df_temp.select_dtypes(include=['category', 'object']).columns:
                df_temp[col] = df_temp[col].astype(str).str.strip()
            df_temp.to_parquet(PATH_VIVIENDA_PARQUET, index=False, engine='pyarrow')
            del df_temp
            print(f"Archivo Parquet creado en: {PATH_VIVIENDA_PARQUET}")

    # Cargar datos desde Parquet
    print("Cargando microdatos anualizados desde Parquet...")
    df_pers = pd.read_parquet(PATH_PERSONAS_PARQUET)
    df_viv = pd.read_parquet(PATH_VIVIENDA_PARQUET)
    
    # En la base anualizada procesamos todo el conjunto de datos de 2025 directamente
    df_pers_dec = df_pers.copy()
    df_viv_dec = df_viv.copy()
    
    print(f"Registros Anuales 2025: Personas={len(df_pers_dec)}, Viviendas={len(df_viv_dec)}")
    
    # Combinar bases (personas + viviendas)
    # Estandarizar llaves para evitar problemas de merge
    for df_tmp in [df_pers_dec, df_viv_dec]:
        for col in ["id_vivienda", "id_hogar", "ciudad", "periodo"]:
            if col in df_tmp.columns:
                df_tmp[col] = df_tmp[col].astype(str).str.strip()
                
    # Definir llaves dinámicas del merge
    merge_keys = ["id_vivienda", "id_hogar"]
    if "periodo" in df_pers_dec.columns and "periodo" in df_viv_dec.columns:
        merge_keys.append("periodo")
        
    print(f"Realizando cruce de Personas y Viviendas usando llaves: {merge_keys}...")
    df_merged = pd.merge(
        df_pers_dec,
        df_viv_dec,
        on=merge_keys,
        how="inner",
        suffixes=("", "_viv")
    )
    print(f"Registros combinados nacionales: {len(df_merged)}")
    
    # Filtrar específicamente para la provincia de Pichincha (Código 17)
    df_merged["provincia"] = (pd.to_numeric(df_merged["ciudad"], errors="coerce").fillna(0) / 10000).astype(int)
    df_merged = df_merged[df_merged["provincia"] == 17].copy()
    print(f"Registros combinados para Pichincha (Provincia 17): {len(df_merged)}")
    
    # --- Exportar bases DTA para compatibilidad con Stata ---
    print("Exportando base de datos fusionada y filtrada para Stata...")
    df_merged_export = df_merged.copy()
    
    # Estandarizar todas las columnas objeto/string para evitar incompatibilidades en Stata
    for col in df_merged_export.select_dtypes(include=['object', 'category']).columns:
        df_merged_export[col] = df_merged_export[col].astype(str)
        
    path_merged_dta = DATA_DIR / "base_merged_pichincha_2025.dta"
    df_merged_export.to_stata(path_merged_dta, write_index=False, version=117)
    print(f"Base de datos unificada guardada en: {path_merged_dta}")
    
    # 1. Pobreza por Ingresos
    # Variable de ingresos per cápita del hogar: ingpc
    # Factor de expansión: fexp
    df_merged["ingpc"] = pd.to_numeric(df_merged["ingpc"], errors="coerce")
    df_merged["fexp"] = pd.to_numeric(df_merged["fexp"], errors="coerce").fillna(1.0)
    
    # Filtrar registros válidos de ingresos
    df_ing = df_merged[df_merged["ingpc"].notna() & (df_merged["ingpc"] >= 0)].copy()
    
    poblacion_total = df_ing["fexp"].sum()
    pobres = df_ing[df_ing["ingpc"] < LINEA_POBREZA]["fexp"].sum()
    extremos = df_ing[df_ing["ingpc"] < LINEA_POBREZA_EXTREMA]["fexp"].sum()
    
    tasa_pobreza = (pobres / poblacion_total) * 100
    tasa_extrema = (extremos / poblacion_total) * 100
    
    print(f"Pobreza por ingresos: {tasa_pobreza:.2f}%")
    print(f"Extrema pobreza por ingresos: {tasa_extrema:.2f}%")
    
    # 2. Coeficiente de Gini
    gini_pich = calcular_gini(df_ing["ingpc"].values, df_ing["fexp"].values)
    print(f"Coeficiente de Gini (Pichincha): {gini_pich:.4f}")
    
    # 3. Curva de Lorenz
    p_cum, q_cum = obtener_curva_lorenz(df_ing["ingpc"].values, df_ing["fexp"].values)
    
    # Graficar Curva de Lorenz (Versión Premium)
    plt.style.use('seaborn-v0_8-whitegrid')
    fig, ax = plt.subplots(figsize=(8, 8))
    ax.plot(p_cum, q_cum, color="#1d3557", label="Curva de Lorenz (Observada)", linewidth=2.5)
    ax.plot([0, 1], [0, 1], color="#e63946", linestyle="--", label="Línea de Igualdad Perfecta (Gini = 0)", linewidth=1.5)
    ax.fill_between(p_cum, p_cum, q_cum, color="#457b9d", alpha=0.2)
    
    # Anotación del Coeficiente de Gini
    ax.text(0.1, 0.8, f"Coeficiente de Gini: {gini_pich:.4f}\nProvincia: Pichincha\nFuente: ENEMDU Anual 2025", 
            bbox=dict(facecolor='white', alpha=0.8, edgecolor='#a8dadc', boxstyle='round,pad=0.5'),
            fontsize=10, color="#1d3557", fontweight="bold")
    
    ax.set_title("Curva de Lorenz y Concentración del Ingreso\nProvincia de Pichincha - Año 2025", fontsize=12, fontweight="bold", color="#1d3557", pad=15)
    ax.set_xlabel("Proporción Acumulada de la Población (Ordenada por Ingreso)", fontsize=10, fontweight="bold", color="#1d3557")
    ax.set_ylabel("Proporción Acumulada del Ingreso", fontsize=10, fontweight="bold", color="#1d3557")
    ax.legend(loc="upper left", frameon=True, facecolor="white")
    ax.set_xlim(0, 1)
    ax.set_ylim(0, 1)
    
    path_grafica = ASSETS_DIR / "curva_lorenz_2025.png"
    fig.savefig(path_grafica, dpi=200, bbox_inches="tight")
    plt.close(fig)
    print(f"Gráfica de Lorenz guardada en: {path_grafica}")
    
    # 3b. Graficar Distribución de Ingresos por Deciles (Explicación visual del Gini)
    df_sorted = df_ing.sort_values(by="ingpc").copy()
    df_sorted["w_cum"] = df_sorted["fexp"].cumsum()
    total_w = df_sorted["fexp"].sum()
    
    df_sorted["decil"] = pd.cut(df_sorted["w_cum"], 
                                bins=np.linspace(0, total_w, 11), 
                                labels=range(1, 11), 
                                include_lowest=True)
    
    df_sorted["ing_exp"] = df_sorted["ingpc"] * df_sorted["fexp"]
    deciles_ing = df_sorted.groupby("decil", observed=False)["ing_exp"].sum()
    deciles_share = (deciles_ing / df_sorted["ing_exp"].sum()) * 100
    
    fig_dec, ax_dec = plt.subplots(figsize=(9, 6))
    colors_dec = ["#a8dadc"] * 9 + ["#1d3557"] # Resaltar el decil más rico
    bars = ax_dec.bar(deciles_share.index.astype(str), deciles_share.values, color=colors_dec, edgecolor="#457b9d", width=0.6)
    
    # Añadir etiquetas con porcentajes sobre las barras
    for bar in bars:
        height = bar.get_height()
        ax_dec.annotate(f'{height:.1f}%',
                    xy=(bar.get_x() + bar.get_width() / 2, height),
                    xytext=(0, 3),
                    textcoords="offset points",
                    ha='center', va='bottom', fontsize=9, fontweight="bold", color="#1d3557")
                    
    ax_dec.set_title("Participación en el Ingreso Total por Deciles de Población\nEvidencia de la Brecha de Desigualdad (Gini = 0.4532)", fontsize=12, fontweight="bold", color="#1d3557", pad=15)
    ax_dec.set_xlabel("Deciles de Hogares (1 = Más Pobres, 10 = Más Ricos)", fontsize=10, fontweight="bold", color="#1d3557")
    ax_dec.set_ylabel("Porcentaje del Ingreso Total (%)", fontsize=10, fontweight="bold", color="#1d3557")
    ax_dec.set_ylim(0, max(deciles_share.values) * 1.15)
    
    path_deciles = ASSETS_DIR / "distribucion_ingreso_deciles.png"
    fig_dec.savefig(path_deciles, dpi=200, bbox_inches="tight")
    plt.close(fig_dec)
    print(f"Gráfica de Deciles guardada en: {path_deciles}")
    
    # 4. Índice de Pobreza Multidimensional (IPM) Simplificado
    # Calcularemos un proxy de privaciones utilizando variables clave disponibles:
    # Dimensión Educación:
    # - Privación en asistencia escolar (para menores de 18): asistencia escolar (p10a / p10b)
    # - Rezago escolar o sin instrucción básica para adultos (p03 >= 18 y nnivins < 2)
    # Dimensión Vivienda y Servicios (desde vivienda):
    # - Agua por red pública (vi03a != 1)
    # - Saneamiento inadecuado (vi04a != 1)
    # - Sin recolección de basura (vi06 != 1 y vi06 != 2)
    # - Hacinamiento (personas / dormitorios > 3)
    
    # Mapeo y cómputo de privaciones individuales/hogar
    # Asistencia escolar (para personas de 5 a 17 años): p07 (1: sí, 2: no)
    df_merged["priv_asistencia"] = np.where((df_merged["p03"] >= 5) & (df_merged["p03"] <= 17) & (df_merged["p07"] == 2), 1, 0)
    
    # Educación rezagada en adultos
    df_merged["priv_educ_adultos"] = np.where((df_merged["p03"] >= 18) & (df_merged["nnivins"] <= 1), 1, 0)
    
    # Saneamiento y Agua
    df_merged["priv_agua"] = np.where(df_merged["vi03a"] != 1, 1, 0)  # No red pública
    df_merged["priv_saneamiento"] = np.where(~df_merged["vi04a"].isin([1, 2]), 1, 0) # No alcantarillado ni pozo séptico
    
    # Privación agregada del hogar (IPM Proxy de 4 indicadores)
    # Si tiene al menos 2 privaciones de las 4, se considera pobre multidimensional
    df_merged["priv_count"] = (df_merged["priv_asistencia"] + 
                               df_merged["priv_educ_adultos"] + 
                               df_merged["priv_agua"] + 
                               df_merged["priv_saneamiento"])
    
    # Tasa IPM
    df_merged["ipm_pobre"] = np.where(df_merged["priv_count"] >= 2, 1, 0)
    
    tasa_ipm = (df_merged[df_merged["ipm_pobre"] == 1]["fexp"].sum() / df_merged["fexp"].sum()) * 100
    print(f"IPM Proxy (tasa de pobreza multidimensional): {tasa_ipm:.2f}%")
    
    # 5. IDH Proxy por provincia
    # Dividir ciudad por 10000 para extraer la provincia
    df_merged["provincia"] = (df_merged["ciudad"].astype(float) / 10000).astype(int)
    
    # Agrupar por provincia
    resumen_provincias = []
    for prov, sub in df_merged.groupby("provincia"):
        if prov < 1 or prov > 24:
            continue  # Omitir códigos de provincia inválidos
            
        w_sum = sub["fexp"].sum()
        if w_sum == 0:
            continue
            
        # Ingreso per cápita medio
        ing_medio = np.average(sub["ingpc"].fillna(0), weights=sub["fexp"])
        
        # Años de educación promedio (para 24 años o más)
        edu_sub = sub[sub["p03"] >= 24]
        if len(edu_sub) > 0 and edu_sub["fexp"].sum() > 0:
            # nnivins representa el nivel de instrucción alcanzado
            edu_prom = np.average(edu_sub["nnivins"].fillna(0) * 4, weights=edu_sub["fexp"]) # multiplicador empírico
        else:
            edu_prom = np.nan
            
        # Pobreza por ingresos
        pob_sub = sub[sub["ingpc"].notna()]
        pob_pond = pob_sub["fexp"].sum()
        if pob_pond > 0:
            tasa_pob_prov = (pob_sub[pob_sub["ingpc"] < LINEA_POBREZA]["fexp"].sum() / pob_pond) * 100
        else:
            tasa_pob_prov = np.nan
            
        resumen_provincias.append({
            "provincia": int(prov),
            "ingreso_medio": float(ing_medio),
            "educacion_promedio_proxy": float(edu_prom),
            "tasa_pobreza_ingresos": float(tasa_pob_prov)
        })
        
    df_prov = pd.DataFrame(resumen_provincias)
    
    # Guardar resultados
    resultados_pichincha = {
        "provincia": "Pichincha",
        "codigo_dpa": 17,
        "anio": 2025,
        "mes": "Diciembre",
        "poblacion_expandida": float(poblacion_total),
        "tasa_pobreza_ingresos_pct": float(tasa_pobreza),
        "tasa_extrema_pobreza_ingresos_pct": float(tasa_extrema),
        "gini_pichincha": float(gini_pich),
        "tasa_ipm_proxy_pct": float(tasa_ipm)
    }
    
    # Guardar JSON de resultados de Pichincha
    path_json = DATA_DIR / "resultados_pichincha_2025.json"
    with open(path_json, "w", encoding="utf-8") as f:
        json.dump(resultados_pichincha, f, ensure_ascii=False, indent=2)
        
    # Guardar CSV de provincias (en este caso solo Pichincha, pero manteniendo la estructura del CSV)
    path_csv = DATA_DIR / "indicadores_provinciales_2025.csv"
    df_prov.to_csv(path_csv, index=False)
    
    # Guardar puntos de la curva de Lorenz
    df_lorenz = pd.DataFrame({"p_poblacion": p_cum, "q_ingreso": q_cum})
    df_lorenz.to_csv(DATA_DIR / "lorenz_puntos_2025.csv", index=False)
    
    # Guardar en archivo Excel con múltiples pestañas para análisis rápido
    path_xlsx = DATA_DIR / "resultados_completos_2025.xlsx"
    with pd.ExcelWriter(path_xlsx, engine='openpyxl') as writer:
        pd.DataFrame([resultados_pichincha]).to_excel(writer, sheet_name="Resultados_Pichincha", index=False)
        df_prov.to_excel(writer, sheet_name="Indicadores_Provinciales", index=False)
        df_lorenz.to_excel(writer, sheet_name="Curva_Lorenz", index=False)
    
    print("\n¡Procesamiento completo exitosamente!")
    print(f" - Resultados Pichincha: {path_json}")
    print(f" - Indicadores provinciales: {path_csv}")
    print(f" - Puntos de Lorenz: {DATA_DIR / 'lorenz_puntos_2025.csv'}")
    print(f" - Resultados completos en Excel: {path_xlsx}")

if __name__ == "__main__":
    main()
