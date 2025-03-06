Snyk uses Python to scan and find your dependencies. Snyk needs the Python version to start scanning and defaults to python. If you are using multiple Python versions, use the --command= option with the test or monitor command to specify the correct Python command for execution. An example follows:\
  snyk test --command=python3
The setup.py file must be targeted. Use the command snyk test --file=setup.py
If you scan a Pip Project and use the --file= option because your manifest file is not the standard requirements.txt, you must use the following option to specify Pip as the package manager --package-manager=pip.
