from ecs_quantitative.ingestion.rag import BibliographyRAG
from collections import defaultdict

try:
    rag = BibliographyRAG(collection_name="economic_development")
    col = rag.memory.client.get_collection(name="economic_development")

    # Get a larger sample to find the frontier
    results = col.get(include=["metadatas"], limit=1000)
    metas = results["metadatas"]

    stats = defaultdict(lambda: 0)
    for m in metas:
        src = m.get("source_name", "unknown")
        page = m.get("page_number", 0)
        if page > stats[src]:
            stats[src] = page

    print("INGESTION_FRONTIER:")
    for src, max_page in stats.items():
        print(f"  - Document: {src} | Last Page Indexed: {max_page}")

    print(f"TOTAL_CHUNKS: {len(metas)}")

except Exception as e:
    print(f"ERROR: {e}")
