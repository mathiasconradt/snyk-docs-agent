--command=<COMMAND>
Indicate which specific Python commands to use based on the Python version.
Snyk uses Python in order to scan and find your dependencies. If you are using multiple Python versions, use this parameter to specify the correct Python command for execution.
Default: python This executes your default python version. Run python -V to find out what your default version is.
Example: snyk sbom --command=python3
