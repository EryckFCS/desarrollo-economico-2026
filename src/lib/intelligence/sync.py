import hashlib
from pathlib import Path
from loguru import logger
from ecs_quantitative.ingestion.rag import MarkdownRAG
from .converter import PDFToMarkdownConverter
from .sanitizer import BibliographicSanitizer

class IntelligenceOrchestrator:
    """Orquestador maestro para el pipeline de inteligencia bibliográfica."""

    def __init__(self, base_dir: Path):
        self.base_dir = base_dir
        self.raw_dir = base_dir / "raw"
        self.md_dir = base_dir / "markdown"
        self.sanitized_dir = base_dir / "sanitized"
        
        self.converter = PDFToMarkdownConverter(self.raw_dir, self.md_dir)
        self.sanitizer = BibliographicSanitizer(self.md_dir, self.sanitized_dir)
        
        self.rag = MarkdownRAG(
            collection_name="economic_development"
        )

    def run_pipeline(self):
        logger.info("=== INICIANDO PIPELINE DE INTELIGENCIA BIBLIOGRÁFICA ===")
        
        # 1. Conversión
        self.converter.convert_all()
        
        # 2. Sanitización
        self.sanitizer.sanitize_all()
        
        # 3. Ingesta al RAG (usando el directorio de sanitizados)
        self.sync_rag()
        
        logger.success("=== PIPELINE COMPLETADO CON ÉXITO ===")

    def sync_rag(self):
        """Sincroniza los archivos sanitizados con el Vector Store usando MarkdownRAG."""
        logger.info(f"Sincronizando directorio sanitizado con el RAG.")
        
        try:
            # MarkdownRAG.index_directory ya maneja la iteración y logging
            result = self.rag.index_directory(
                corpus_dir=self.sanitized_dir,
                exclude={"conversion_report.json"}
            )
            logger.info(f"RAG actualizado: {result['files_processed']} archivos indexados ({result['total_chunks']} chunks).")
            if result["errors"]:
                logger.warning(f"Errores en: {result['errors']}")
        except Exception as e:
            logger.error(f"Error crítico en la sincronización RAG: {e}")
