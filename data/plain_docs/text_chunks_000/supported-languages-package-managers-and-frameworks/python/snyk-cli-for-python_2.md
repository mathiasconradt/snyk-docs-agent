Poetry v1 is supported.
To build the dependency tree for a Poetry application, Snyk uses pyproject.toml and poetry.lock files. Both files must be present for Snyk to scan Poetry dependencies and identify issues.
If no poetry.lock file is present; you should run poetry lock to generate one before scanning.

PEP 621 is a standard for defining direct dependencies in pyproject.toml files, which is different from how Poetry does this. 
Snyk does not support PEP 621.
