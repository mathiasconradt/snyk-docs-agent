Return results in SARIF format.
--sarif-file-output=<OUTPUT_FILE_PATH>
Save test output in SARIF format directly to the \ file, regardless of whether or not you use the --sarif option.
This is especially useful if you want to display the human-readable test output using stdout and at the same time save the SARIF format output to a file.
If you use an option that sets project attributes and your role lacks permission to edit project attributes the iac test command fails. For instructions on how to proceed see Permissions required to edit Project attributes from the Snyk CLI
