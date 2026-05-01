from __future__ import annotations
from ecs_quantitative.core.federation import FederatedNodeConfig

class NodeSettings(FederatedNodeConfig):
    """Configuración canonizada para el nodo economic_development."""
    project_name: str = "Economic Development"
    rag_collection: str = "economic_development"

settings = NodeSettings()
