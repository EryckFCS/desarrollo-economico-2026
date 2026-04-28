import re
from pathlib import Path


def test_root_structure():
    """Validates that the root directory follows Blueprint v8.0.0."""
    required_dirs = [
        ".github/workflows",
        "bibliography/raw",
        "bibliography/processed",
        "bibliography/markdown",
        "bibliography/sanitized",
        "config",
        "data",
        "docs/vaults",
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
    vaults_path = Path(__file__).parent.parent.parent / "docs" / "vaults"
    pattern = re.compile(r"^u\d-(aa|ape|acd)-\d{2}-[\w-]+$")

    for item in vaults_path.iterdir():
        if item.is_dir():
            assert item.name == item.name.lower(), f"Vault '{item.name}' must be lowercase."
            assert pattern.match(item.name), (
                f"Vault '{item.name}' does not follow convention [unit]-[cat]-[seq]-[slug]."
            )


def test_vault_autonomy():
    """Validates that each research vault has the required internal structure."""
    vaults_path = Path(__file__).parent.parent.parent / "docs" / "vaults"
    required_internal = ["assets", "logs", "index.qmd"]

    for vault in vaults_path.iterdir():
        if vault.is_dir():
            for req in required_internal:
                assert (vault / req).exists(), (
                    f"Vault '{vault.name}' is missing '{req}' for autonomy."
                )
