Set the Python version in Git Projects
The supported versions of Python are 2.7, 3.7, 3.8, 3.9, 3.10,3.11,3.12.
When scanning Pip Projects imported from Git, Snyk uses the version of Python specified in Organization settings or .snyk files.
Snyk uses a recent patch version for each of the supported minor version.
By default, Snyk tests Pip Projects using Python 3.7.

The behavior of imports, re-tests, and PR checks for Projects with dependencies requiring a higher version of Python varies according to the version specified:

Python 3.8 or above: scans will fail with an error message that includes details of the first failed package, the Python version it requires, and the Python version used.
Python 2.7 or 3.7: scans will succeed, but the incompatible dependencies are omitted from the results.


To define which Python minor version Snyk uses to test your Git-imported Pip Projects, you can use Organization settings and .snyk policy file.
To define the Python version for all Projects in an Organization:

Log in to your Snyk account and navigate to the relevant Group and Organization.
Select Settings, then Snyk Open Source.
Select Edit settings for Python.
From the Python version dropdown, select the Python version to use when testing Projects for this Organization.

Pip Python version settings
If you require a Project in an Organization to use a different Python version, you may add a .snyk file to the Project repository and specify the desired version.
python
language-settings:
  python: '3.10'
The .snyk file must be in the same directory as the Project manifest file.
Snyk will select which Python version to use according to the major, minor and patch versions specified in the .snyk file.

Major version only (for example, 2 or 3): scanned with default minor versions - 2.7 or 3.7
Major and minor version (for example, 3.7, 3.8, 3.9, 3.10, 3.11, 3.12): scanned with 3.7, 3.8, 3.9, 3.10, 3.11 or 3.12
Major, minor and patch version (or example, 3.8.x, 3.9.x, 3.10.x, 3.11.x, 3.12.x): the specific patch version is ignored, the Project is scanned with default versions of 3.8, 3.9, 3.10, 3.11 or 3.12
Any versions specified with an unsupported minor version: defaults to 2.7 or 3.7
