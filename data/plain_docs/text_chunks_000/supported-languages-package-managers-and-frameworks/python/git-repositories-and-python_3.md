Private PyPI mirrors are not supported. Pipfiles specifying a private mirror as their only source will not be imported.

To scan Pipenv Projects, Snyk analyzes your Pipfile and Pipfile.lock files using native pipenv tooling in an isolated Linux environment.

Packages from private repositories and those with non-Linux OS requirements may be unresolvable and omitted from the dependency tree.
If a Pipfile.lock is present, any unresolved packages it contains are added to the top level of the dependency tree using versions from the lock file. 

You can choose whether Snyk should include dependencies specified in [dev-packages] when scanning your Pipenv Projects.
Pipenv dev dependencies are not included in scans by default. To change this, modify your settings as follows:

Log in to your Snyk account and navigate to the relevant Group and Organization.
Select Settings, then Languages.
Select Edit settings for Python.
Enable or disable the Scan Pipenv dev dependencies option under the Pipenv settings. 

Pipenv dev dependency settings
