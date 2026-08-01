import os
import re
from pathlib import Path
import fitz  # PyMuPDF

# Rutas
BASE_DIR = Path("/home/erick-fcs/Documentos/universidad/07_Ciclo/septimo_ciclo/economic_development/docs/vaults/u3-aa-02-analisis_sector_productivo/readings")
RAW_DIR = BASE_DIR / "raw"
HIGHLIGHTED_DIR = BASE_DIR / "highlighted"
HIGHLIGHTED_DIR.mkdir(parents=True, exist_ok=True)

# Mapeo de PDFs y sus correspondientes citas literales a buscar y subrayar
CITAS_MAP = {
    "memoria-sqm-sa-2025_-vf.pdf": [
        "Al 31 de diciembre de 2025, la fuerza laboral de SQM en Chile y el mundo se conforma por 7.739 personas",
        "El 76% de los empleados se desempeña en las operaciones de la Compañía en el norte de Chile, principalmente en las Regiones de Tarapacá y Antofagasta",
        "Aproximadamente el 87% de nuestros empleados trabajan en Chile",
        "SQM Salar SpA",
        "Nova Andino Litio SpA",
        "Novandino Litio",
        "cuota de mercado en productos químicos de litio fue de aproximadamente el 14% en 2025",
        "Albemarle (12%)"
    ],
    "subrei2026informe.pdf": [
        "Chile posee el 25% de las reservas globales de litio",
        "Australia (23%), Argentina (12%) y Estados Unidos 12%",
        "Australia (23%), Argentina (12%) y Estados Unidos 12",
        "principal exportador mundial de carbonato e hidróxido de litio",
        "participación de 46% en el total exportado",
        "Australia (31,7%), China (21,4%), Chile (19,3%)",
        "Australia (31.7%), China (21.4%), Chile (19.3%)",
        "321,7 mil toneladas de carbonato de litio equivalente",
        "321.7 mil toneladas de carbonato de litio equivalente",
        "US$2.397 millones",
        "US$2,397 millones"
    ],
    "cochilco_2025_perspectivas.pdf": [
        "La inversión de China en el mercado del litio en África se basa en una estrategia de integración vertical",
        "El mineral se envía a refinerías propias en China, aislando la cadena de la volatilidad del mercado",
        "Esta rapidez se debe a que la inversión y las decisiones operativas provienen de un único conglomerado que controla toda la cadena de valor",
        "desde la minería hasta la refinación y la manufactura de baterías"
    ],
    "sernageomin2024dotacion.pdf": [
        "TRABAJADORES/AS EN FAENAS MINERAS: AÑO 2022 TOTAL: 311.291 | AÑO 2023 TOTAL: 329.293 | AÑO 2024 TOTAL: 327.785",
        "TRABAJADORES/AS EN FAENAS MINERAS",
        "TOTAL: 311.291",
        "TOTAL: 329.293",
        "TOTAL: 327.785",
        "el número de mujeres trabajadoras aumentó de manera significativa",
        "pasando de 11,02% en 2023 (36.292 trabajadoras) al 11,77% en 2024 (38.590 trabajadoras)",
        "pasando de 11.02% en 2023 (36.292 trabajadoras) al 11.77% in 2024 (38.590 trabajadoras)"
    ],
    "bcentral2026comercio.pdf": [
        "Carbonato de litio",
        "Óxido e hidróxido de litio",
        "2.395,4",
        "1.385,3"
    ],
    "quintero_2022_estructuralismo.pdf": [
        "vulnerabilidad macroeconómica relacionada con los ciclos económicos de los países",
        "La vulnerabilidad macroeconómica en el estructuralismo se origina a partir de los rasgos",
        "La vulnerabilidad macroeconómica en el neoestructuralismo se asocia con la persistencia de una",
        "subsidios y programas continuos de capacitación para mejorar las habilidades de los trabajadores",
        "Modernización a través de un proceso de internacionalización"
    ],
    "odio_2010_enfoques.pdf": [
        "El estado como coordinador",
        "proceso de industrialización",
        "Sustitución de Importaciones",
        "espina dorsal",
        "CEPAL"
    ],
    "neoestructuralismo.pdf": [
        "neoestructuralismo",
        "CEPAL",
        "heterogeneidad",
        "productiva",
        "espuria",
        "eficiencia"
    ],
    "preinformejunio2026.pdf": [
        "exportaciones no mineras",
        "salmones y truchas",
        "salmónidos"
    ]
}

def clean_text(text: str) -> str:
    """Normaliza espacios y saltos de línea para facilitar búsquedas."""
    return re.sub(r'\s+', ' ', text).strip()

def highlight_pdf(pdf_name: str, quotes: list[str]):
    pdf_path = RAW_DIR / pdf_name
    output_path = HIGHLIGHTED_DIR / pdf_name
    
    if not pdf_path.exists():
        print(f"Advertencia: El archivo {pdf_name} no existe en {RAW_DIR}")
        return
        
    print(f"\nProcesando {pdf_name}...")
    doc = fitz.open(str(pdf_path))
    highlight_count = 0
    
    for page_num in range(len(doc)):
        page = doc[page_num]
        
        for quote in quotes:
            quote_clean = clean_text(quote)
            
            # Subdividir frases largas para buscar en caso de saltos de línea
            subparts = [p.strip() for p in re.split(r'\.\.\.|\band\b|\by\b', quote_clean) if len(p.strip()) > 5]
            if not subparts:
                subparts = [quote_clean]
                
            for part in subparts:
                rects = page.search_for(part)
                if rects:
                    for rect in rects:
                        annot = page.add_highlight_annot(rect)
                        annot.update()
                        highlight_count += 1
                        print(f"  [+] Resaltado en página {page_num + 1}: '{part[:50]}...'")
                        
    doc.save(str(output_path))
    print(f"Guardado PDF subrayado: {output_path} ({highlight_count} anotaciones)")
    doc.close()

if __name__ == "__main__":
    for pdf_name, quotes in CITAS_MAP.items():
        highlight_pdf(pdf_name, quotes)
    print("\nProceso de subrayado finalizado con éxito.")
