For a Python project, specify a particular file to monitor.
Default: Snyk scans the requirements.txt file at the top level of the project.
When specifying a value for the --file parameter that is not the default file, you must also include the --package-manager=pip option. The test will fail without this parameter.
Always specify this parameter with the value pip when using a custom --file value. For example:
bash
snyk test --file=requirements-dev.txt --package-manager=pip
This allows Snyk to correctly recognize and scan your specified manifest file, such as when you have renamed it to requirements-dev.txt.
