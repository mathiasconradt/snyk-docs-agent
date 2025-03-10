The following options are available for configuration:


Snyk organization: Select the Snyk organization where reports of findings are saved.
Vulnerability handling: Define the pipeline behavior if a vulnerability is found. If the Block deployment when Snyk finds an error checkbox is checked, the pipeline fails and does not proceed to the next stage in the CodePipeline.
Block deployment for vulnerabilities with a minimum severity of: Low|Medium|High|Critical: Report only vulnerabilities of the specified level or higher.

Monitoring behavior on build: Set the criteria to monitor projects from the AWS CodePipeline. The available options are:

Always monitor: The project snapshot is created independent of the test results.
When test fails: The project snapshot is created only when the test fails.
When test passes: The project snapshot is created only when the test is successful.
Never monitor: The project snapshot is never created.

Unless the Never monitor option is selected, the Project to monitor field is mandatory. This is to prevent any unintentional project overrides due to naming conflicts. The report is created and associated with the selected Snyk organization.
* Project to monitor: Specify the project group name for your projects. This is the same as using the remote-repo-url option in the CLI. The field does not allow any spaces in the names. This field is mandatory except when the Never monitor option has been selected.
* Auto-detect all projects in the working directory: Check this checkbox to auto-detect all projects in the AWS CodePipeline. If this option is not selected the plugin tests the first project it finds because it is using the --all-projects option to detect all projects.
* Advanced options (all of them are optional):
  * Excluded directories: This option only appears when Auto-detect all projects is checked. Specify sub-directories to exclude; the directories must be comma-separated.
  * Custom path to manifest file to test: This option only appears when Auto-detect all projects is not checked. You can specify the file path to the manifest file that Snyk is to scan. When this option is omitted Snyk tries to auto-detect the manifest file for your project.
  * Additional arguments: A number of additional options are allowed, which can be applied to test and monitor. The options are as follows: --dev, --detection-depth, --prune-repeated-subdependencies, --strict-out-of-sync, --yarn-workspaces, --skip-unresolved. For more information on these options, see the CLI help docs.



To change the configuration settings of a previously-configured stage, click the Snyk link.

Confirm the connection to Snyk when prompted.

Save the pipeline after successfully connecting to Snyk.
This configures your Snyk stage in the CodePipeline, so you can test your application. Release the latest changes through the CodePipeline options for the latest changes to take effect.
