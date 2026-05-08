# /// script
# dependencies = [
#   "python-docx",
# ]
# ///

from docx import Document

doc = Document("Taller 2_U1_plantilla presentación de informe (1).docx")
print("Available styles:")
for style in doc.styles:
    print(f"- {style.name} ({style.type})")
