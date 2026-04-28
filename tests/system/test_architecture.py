import re
import pytest
from pathlib import Path


def test_root_structure():
    """Validates that the root directory follows Blueprint v8.0.0."""
    required_dirs = [
        ".github/workflows",
        "bibliography/raw",
        "bibliography/processed",
        "bibliography/sanitized",
        "config",
        "data",
        "docs/evidence",
        "docs/management",
        "docs/readings",
        "docs/syllabus",
        "reports",
        "scratch",
        "scripts",
        "src/core",
        "src/lib",
        "src/tasks",
        "tests/governance",
        "tests/system",
    ]

    root = Path(__file__).parent.parent.parent
    for d in required_dirs:
        assert (root / d).is_dir(), f"Missing required directory: {d}"


def test_vault_naming_convention():
    """Ensures vaults follow the [unit]-[cat]-[seq]-[slug] convention."""
    evidence_path = Path(__file__).parent.parent.parent / "docs" / "evidence"
    pattern = re.compile(r"^u\d-(aa|ape|acd)-\d{2}-[\w-]+$")

    for item in evidence_path.iterdir():
        if item.is_dir():
            assert item.name == item.name.lower(), f"Vault '{item.name}' must be lowercase."
            assert pattern.match(item.name), (
                f"Vault '{item.name}' does not follow convention [unit]-[cat]-[seq]-[slug]."
            )


def test_vault_autonomy():
    """Validates that each research vault has the required internal structure."""
    evidence_path = Path(__file__).parent.parent.parent / "docs" / "evidence"
    required_internal = ["assets", "logs", "chapters", "index.qmd"]

    for vault in evidence_path.iterdir():
        if vault.is_dir():
            for req in required_internal:
                assert (vault / req).exists(), (
                    f"Vault '{vault.name}' is missing '{req}' for autonomy."
                )


def test_zero_floating_root():
    """Ensures no unauthorized research files are floating in the root."""
    root = Path(__file__).parent.parent.parent
    prohibited_extensions = [".ipynb", ".csv", ".xlsx", ".pdf"]
    
    for item in root.iterdir():
        if item.is_file() and item.suffix in prohibited_extensions:
            pytest.fail(f"Floating file detected in root: {item.name}. Move it to a vault.")
