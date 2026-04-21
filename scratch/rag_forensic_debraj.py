from ecs_quantitative.ingestion.rag import BibliographyRAG

try:
    rag = BibliographyRAG(collection_name="economic_development")
    col = rag.memory.client.get_collection(name="economic_development")

    # Check for 'Debraj Ray' specifically
    results = col.get(
        where={"source_name": "Debraj Ray Economía del desarrollo"}, include=["metadatas"]
    )
    metas = results["metadatas"]

    if not metas:
        print("FRONTIER: Debraj Ray not started yet.")
    else:
        max_page = max([m.get("page_number", 0) for m in metas])
        print(f"FRONTIER: Debraj Ray processed up to page {max_page}")

except Exception as e:
    print(f"ERROR: {e}")
