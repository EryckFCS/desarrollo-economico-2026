import json
import os
from pathlib import Path
from ecs_quantitative.core.hardware import compute_sha256
from ecs_quantitative.management.intelligence import PDFToMarkdownConverter, BibliographicSanitizer

def main():
    # Rutas absolutas del proyecto final
    script_dir = Path(__file__).resolve().parent
    project_final_dir = script_dir.parent
    docs_dir = project_final_dir / "docs"
    
    # Subcarpetas de destino
    markdown_dir = docs_dir / "markdown"
    sanitized_dir = docs_dir / "sanitized"
    
    # Crear carpetas si no existen
    markdown_dir.mkdir(parents=True, exist_ok=True)
    sanitized_dir.mkdir(parents=True, exist_ok=True)
    
    print(f"Buscando PDFs en: {docs_dir}")
    
    # Instanciar el convertidor y sanitizador centrales
    converter = PDFToMarkdownConverter(raw_dir=docs_dir, output_dir=markdown_dir)
    sanitizer = BibliographicSanitizer(input_dir=markdown_dir, output_dir=sanitized_dir)
    
    # Ejecutar la conversión y sanitización
    print("Iniciando conversión de PDFs a Markdown...")
    converted_count = converter.convert_all(char_threshold=50, force=True, max_workers=2)
    print(f"Conversión completada. Archivos convertidos: {converted_count}")
    
    print("Iniciando sanitización de archivos Markdown...")
    sanitized_count = sanitizer.sanitize_all(force=True, max_workers=2)
    print(f"Sanitización completada. Archivos sanitizados: {sanitized_count}")
    
    # Generar metadatos
    metadata_list = []
    pdf_files = list(docs_dir.glob("*.pdf"))
    
    for pdf_path in pdf_files:
        sha256_hash = compute_sha256(pdf_path)
        md_file = markdown_dir / f"{pdf_path.stem}.md"
        sanitized_file = sanitized_dir / f"{pdf_path.stem}.md"
        
        file_metadata = {
            "file_name": pdf_path.name,
            "original_path": str(pdf_path.relative_to(project_final_dir)),
            "size_bytes": pdf_path.stat().st_size,
            "sha256": sha256_hash,
            "converted_to_markdown": md_file.exists(),
            "markdown_path": str(md_file.relative_to(project_final_dir)) if md_file.exists() else None,
            "sanitized": sanitized_file.exists(),
            "sanitized_path": str(sanitized_file.relative_to(project_final_dir)) if sanitized_file.exists() else None,
        }
        metadata_list.append(file_metadata)
        
    # Guardar en metadata.json
    metadata_json_path = docs_dir / "metadata.json"
    with open(metadata_json_path, "w", encoding="utf-8") as f:
        json.dump(metadata_list, f, indent=4, ensure_ascii=False)
        
    print(f"Metadatos guardados con éxito en: {metadata_json_path}")

if __name__ == "__main__":
    main()
