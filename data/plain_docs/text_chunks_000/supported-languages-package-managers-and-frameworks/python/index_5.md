Supported Python versions are 3.8, 3.9, 3.10, 3.11, 3.12.
Snyk uses Python version information specified in each Pipfile to choose the major and minor versions to use in scanning, for example:
python
[requires]
python_version = "3.6"
Specific patch versions are ignored; Snyk uses a recent patch version from each series.
Snyk defaults to Python 3.10 if the Pipfile contains:

No Python version information
Only a major version
An unsupported version
