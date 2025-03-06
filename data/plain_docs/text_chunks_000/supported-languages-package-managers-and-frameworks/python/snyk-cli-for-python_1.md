Run pip install before scanning with the CLI,for for example:
pip install -r requirements.txt

Pip requirements.txt files specify only top-level dependencies, not nested or transitive ones. Therefore, the full Pip Project must be installed to ensure the CLI can build a complete dependency tree.
