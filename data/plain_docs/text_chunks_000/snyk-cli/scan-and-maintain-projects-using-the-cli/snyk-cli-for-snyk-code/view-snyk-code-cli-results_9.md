The snyk code test --json-file-output=<path/to/new_file> command is available in the Snyk CLI v. 1.910.0 and higher. To update your Snyk CLI version, see Install or update the Snyk CLI.
To export the results to a new JSON file, with a standard  display of results in the terminal, use the following command:
snyk code test --json-file-output=<path/to/new_json_file>
To export the test results to a new SARIF file, use the following command:
snyk code test --sarif-file-output=<path/to/new_sarif_file>
The test results appear in the terminal in the standard format, and a JSON or SARIF file is created in the path you specified.
Because JSON and SARIF are the same for snyk code test, only a JSON example is shown here. To export the test results of the snyk-goof-master folder to a JSON file called json, change the directory to the root folder of the repository, and enter the following:
snyk code test --json-file-output=json
In the terminal, the Code test results appear in the standard format:
snyk code test results in the terminal
In the repository folder, a JSON file is created:
JSON file in repository
