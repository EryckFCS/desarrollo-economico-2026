from ecs_quantitative.ingestion.rag import BibliographyRAG
import json


def search_rag(query):
    try:
        rag = BibliographyRAG(collection_name="economic_development")
        results = rag.query(query)
        # Results is a list of dicts
        print(json.dumps(results, indent=2))
    except Exception as e:
        print(f"ERROR: {e}")


if __name__ == "__main__":
    print("Searching for 'Smelser, Coleman, Modernización'...")
    search_rag(
        "Neil Smelser diferenciación estructural, James Coleman modernidad capacidad funcional problemas integración"
    )
