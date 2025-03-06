Codebase
Snyk does not rely on a build to perform analysis. Only the source code is required.
Open the directory of the source code in the terminal and run the following command:
snyk code test

If you precompile components, the source code should still be present to get the best results and coverage.

For reporting, you can generate reports using the snyk-to-html plugin to generate reporting artifacts. Additionally, there are JSON and SARIF export capabilities for programmatic access to results, using the options --json and --sarif, respectively. For more information, see Exporting the test results to a JSON or SARIF file.
