import json
from pathlib import Path
from loguru import logger

try:
    import fitz  # PyMuPDF
except ImportError:
    logger.error("PyMuPDF (fitz) is not installed. Please run 'uv add pymupdf'")


class PDFToMarkdownConverter:
    """Convierte archivos PDF a Markdown digital detectando densidad de texto."""

    def __init__(self, raw_dir: Path, output_dir: Path):
        self.raw_dir = raw_dir
        self.output_dir = output_dir
        self.output_dir.mkdir(parents=True, exist_ok=True)

    def convert_all(self, char_threshold: int = 150):
        """Procesa todos los PDFs en raw_dir recursivamente."""
        pdf_files = list(self.raw_dir.rglob("*.pdf"))
        logger.info(f"Encontrados {len(pdf_files)} archivos PDF para conversión.")

        state = {
            "summary": {"total": len(pdf_files), "converted": 0, "needs_ocr": 0, "failed": 0},
            "details": [],
        }

        for idx, pdf_path in enumerate(pdf_files, 1):
            rel_path = pdf_path.relative_to(self.raw_dir)
            md_filename = rel_path.with_suffix(".md").name
            # Mantener estructura plana en output_dir pero con prefijo si hay colisión
            md_path = self.output_dir / md_filename

            logger.info(f"[{idx}/{len(pdf_files)}] Procesando: {pdf_path.name}")

            try:
                doc = fitz.open(pdf_path)
                num_pages = len(doc)
                full_text = ""

                for page_num in range(num_pages):
                    page = doc.load_page(page_num)
                    page_text = page.get_text("text").strip()
                    if page_text:
                        full_text += f"\n\n## Página {page_num + 1}\n\n"
                        full_text += page_text

                doc.close()

                avg_chars = len(full_text) / max(num_pages, 1)

                if avg_chars < char_threshold:
                    logger.warning(
                        f"  -> SOSPECHA DE ESCANEADO (avg chars: {avg_chars:.0f}). Marcado como NEEDS_OCR."
                    )
                    state["summary"]["needs_ocr"] += 1
                    state["details"].append(
                        {
                            "file": str(rel_path),
                            "status": "NEEDS_OCR",
                            "avg_chars": avg_chars,
                            "pages": num_pages,
                        }
                    )
                else:
                    with open(md_path, "w", encoding="utf-8") as f:
                        f.write(f"# Documento: {pdf_path.stem}\n")
                        f.write(f"Source: {rel_path}\n")
                        f.write("---\n")
                        f.write(full_text)

                    state["summary"]["converted"] += 1
                    state["details"].append(
                        {
                            "file": str(rel_path),
                            "status": "CONVERTED",
                            "pages": num_pages,
                            "size_chars": len(full_text),
                        }
                    )
                    logger.success(f"  -> Convertido: {md_filename}")

            except Exception as e:
                logger.error(f"  -> ERROR: {e}")
                state["summary"]["failed"] += 1
                state["details"].append({"file": str(rel_path), "status": "ERROR", "error": str(e)})

        # Guardar reporte
        report_path = self.output_dir / "conversion_report.json"
        with open(report_path, "w", encoding="utf-8") as f:
            json.dump(state, f, indent=4, ensure_ascii=False)

        logger.info(f"Conversión finalizada. Reporte en: {report_path}")
        return state
