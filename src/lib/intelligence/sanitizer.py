from pathlib import Path
from loguru import logger
from ecs_quantitative.nlp.rag.markdown_sanitizer import MarkdownSanitizer


class BibliographicSanitizer:
    """Limpia archivos Markdown usando la lógica centralizada de ecs_quantitative."""

    def __init__(self, input_dir: Path, output_dir: Path):
        self.input_dir = input_dir
        self.output_dir = output_dir
        self.output_dir.mkdir(parents=True, exist_ok=True)
        self.sanitizer = MarkdownSanitizer()

    def sanitize_all(self):
        """Sanitiza todos los .md en input_dir."""
        md_files = list(self.input_dir.glob("*.md"))
        logger.info(f"Iniciando sanitización de {len(md_files)} archivos Markdown.")

        processed = 0
        for md_file in md_files:
            output_path = self.output_dir / md_file.name

            try:
                with open(md_file, "r", encoding="utf-8") as f:
                    content = f.read()

                clean_content = self.sanitizer.sanitize(content)

                with open(output_path, "w", encoding="utf-8") as f:
                    f.write(clean_content)

                processed += 1
                if processed % 5 == 0:
                    logger.info(f"Sanitizados {processed}/{len(md_files)} archivos.")
            except Exception as e:
                logger.error(f"Error sanitizando {md_file.name}: {e}")

        logger.success(f"Sanitización finalizada: {processed} archivos procesados.")
        return processed
