To build the dependency tree, Snyk analyzes the setup.py file, and detects packages listed in the install_requires key.
This file will not be discovered automatically by the CLI. It must be specified manually using the  --file option, for example:
python
snyk test --file=setup.py
You can also convert setup.py to requirements.txt by installing the packages into a virtual environment and then running pip freeze.
