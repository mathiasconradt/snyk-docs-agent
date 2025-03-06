Snyk checks the Snyk database and the .snyk file for ignore rules when scanning by means of an SCM integration, the Snyk CLI, and a CI/CD integration.
If there is a .snyk file in the Project, thesnyk test command uses that file as the ignore mechanism, instead of the ignores set from the Web UI.
When the .snyk file is included in an SCM Project, Snyk considers both the database ignores and the .snyk ignores.
When you include the .snyk file in your code repository and the language-settings: value is set, you gain the advantage of creating Project-level Python settings when you run code repository scans.

For SCM scans, for example, GitHub scans, the Snyk Web UI controls the Python version at the Organization level, from the Organization > Settings > Snyk Open Source > Python > Pip Python version option.
By including a .snyk file in your code repository with the language settings: value set to one of the available UI language settings options, you can override the Organization level settings for SCM scans of that repository to use any Python version that is available in the UI options.


if the .snyk file was not present at the initial import of the Project into Snyk., you must re-import the Project.

For more information about Python version support, see Python version support.
For more information about using the .snyk file with Open Source Projects, see the following:
Ignore vulnerabilities using the Snyk CLI
Error message: Ignoring via the CLI is not enabled for this organization. Please ignore issues via our website
