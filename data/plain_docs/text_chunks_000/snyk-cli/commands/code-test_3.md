Print results on the console as a JSON data structure.
Example: $ snyk code test --json
--json-file-output=<OUTPUT_FILE_PATH>
Save test output as a JSON data structure directly to the specified file, regardless of whether or not you use the --json option.
Use to display the human-readable test output using stdout and, at the same time, save the JSON data structure output to a file.
For SAST, if no issues are found, Snyk does not create a json file. In contrast, for open-source, Snyk creates a file whether or not issues are found.
Example: $ snyk code test --json-file-output=vuln.json
