import os
from pathlib import Path
from typing import Any

class Settings:
    def __init__(self):
        self.project_name = "Economic Development"
        self.root_path = Path(__file__).parent.parent.parent
        self.config_path = self.root_path / "pyproject.toml"

settings = Settings()
