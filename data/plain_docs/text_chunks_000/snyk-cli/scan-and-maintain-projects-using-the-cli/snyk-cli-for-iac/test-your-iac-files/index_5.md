SARIF is an open standard for the output of static analysis tools. You can view and save the results of your tests as a SARIF file for analysis in another tool.
Use the following command to receive output in the SARIF file format
snyk iac test main.tf --sarif
To save this to a file output, you can run the following command:
snyk iac test main.tf --sarif-file-output=snyk.sarif
