Save test output as a JSON data structure directly to the specified file, regardless of whether or not you use the --json option.
Use to display the human-readable test output using stdout and at the same time save the JSON data structure output to a file.
For open source, Snyk creates a file whether or not issues are found. In contrast, for SAST, if no issues are found, Snyk does not create a json file.
Example: $ snyk test --json-file-output=vuln.json
If you see the invalid string length error, refer to Invalid string length error when scanning projects
