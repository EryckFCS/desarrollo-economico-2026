import sys
from pathlib import Path

# Add project root to path for testing
root_dir = Path(__file__).parent.parent
sys.path.append(str(root_dir))
