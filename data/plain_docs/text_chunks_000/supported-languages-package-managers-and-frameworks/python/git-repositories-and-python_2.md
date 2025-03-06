Poetry v1 is supported.
To scan Poetry Projects, Snyk inspects your pyproject.toml and poetry.lock files.
You can choose whether Snyk should include dev dependencies when scanning your Poetry Projects.
Snyk regards non-dev dependencies to be those declared in tool.poetry.dependencies, the implicit main group. All others are classed as dev dependencies.
Poetry dev dependencies are not included in scans by default. To change this, modify your settings as follows:

Log in to your Snyk account and navigate to the relevant Group and Organization.
Select Settings, then Languages.
Select Edit settings for Python.
Enable or disable the Scan Poetry dev dependencies option under the Poetry dev dependencies settings. 

Poetry dev dependency settings
