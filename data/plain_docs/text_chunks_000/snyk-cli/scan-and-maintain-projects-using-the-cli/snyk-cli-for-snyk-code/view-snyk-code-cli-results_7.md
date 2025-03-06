You can output the snyk code test results to JSON or SARIF format in the terminal instead of displaying the results in the Snyk CLI format.
You can also export the test results to a JSON or SARIF format file. SARIF is an open standard for the output of static analysis tools. For more information, see the SARIF site. 
The severity levels of the issues discovered by running snyk code test and reported in JSON and SARIF files are displayed differently from the results in the terminal.  For more information, see Severity levels in the JSON and SARIF files.
To output the test results to JSON format, enter the following:
snyk code test <path/to/folder> --json
To output the test results to SARIF format, enter the following:
snyk code test <path/to/folder> --sarif
The test results appear in the terminal in JSON or SARIF format.
Because JSON and SARIF are the same for snyk code test, only a JSON example is shown here. The example shows how to output the test results of the snyk-goof-master folder in JSON format in the terminal by using the following command:
snyk code test /Users/username/Documents/Repositories/snyk-goof-master --json
The test results appear in the terminal in JSON format:
snyk code test results in JSON format
