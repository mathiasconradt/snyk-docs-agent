You can run snyk-to-html as part of a snyk test command to create a readable build artifact as part of the output of a test.
You can also run a snyk test command with the option to export the results to a JSON file and then convert the JSON  file to HTML using  snyk-to-html. You can export Snyk Code results to either a JSON or a SARIF file and convert that file to HTML.
When you run the snyk-to-html command, you can customize it with the following command options:
ShortLongDescriptionDefault-i--inputThe input path of the JSON or SARIF file that contains the test results. SARIF format is not supported for open source scan results stdin-o--outputPrecedes the name of the output file of the HTML results.Example:-o results.htmlstdout-t--templateTemplate location for generating the HTML.template/test-report.hbs-s--summaryGenerates an HTML file with only the summary instead of the details report.Details vulnerability report-a--actionalable-remediationDisplay actionable remediation info if available.Not applicable-d--debugRun the command in debug mode.Not applicable
The snyk-to-html command does not generate the standard exit codes.
To display the help for snyk-to-htmlUse the command snyk-to-html --help or --h.
If you want to use the snyk-to-html command in a CI/CD pipeline, see the Snyk CI/CD integration examples for an example of a workaround for Azure Pipelines.
For more information, see Use snyk-to-html command options.
