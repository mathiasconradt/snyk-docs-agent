To build the dependency tree for a Pipenv application, Snyk uses Pipfile and Pipfile.lock files. Both files must be present for Snyk to scan Pipenv dependencies and identify issues.
Run pip install before scanning with the CLI.
Run pipenv install to ensure the CLI can build an up-to-date, accurate dependency tree using pipenv graph.
