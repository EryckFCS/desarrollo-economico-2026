from ecs_quantitative.ingestion.rag import BibliographyRAG

try:
    rag = BibliographyRAG(collection_name="economic_development")
    stats = rag.memory.get_stats()
    print(f"STATS: {stats}")
except Exception as e:
    print(f"ERROR: {e}")
