Use the Snyk plugin with your TeamCity projects to test and monitor your code for vulnerabilities on an ongoing basis, for breaking builds when newly disclosed vulnerabilities related to your project are announced, and to receive relevant notifications, all based on your configurations.
The steps in the process follow:

The TeamCity account admin selects the Snyk plugin for installation.
TeamCity installs the plugin on the server in the Plugin directory.
The admin enables the plugin.
The user creates a project or updates an existing project, adding Snyk Security as a build step.
The user configures the build, including the configuration of the Snyk Security step (API token, policy changes, and so on).
Snyk authenticates your account using the API token you configured in the build.
The user runs a build.
During the build, before scanning for vulnerabilities, your Snyk installation is verified and updated as necessary in the background, based on your policy configuration.
Snyk then analyzes the manifest file of your project, automatically detecting the project type to find direct and transitive dependencies and tests your project against the Snyk vulnerability database for known vulnerabilities.
The Snyk Security Report tab displays the test results from TeamCity in the build details. The results indicate the number of known issues and the number of associated dependency paths identified.
If the user did not choose the the Monitor project on build configuration setting for this project:
Snyk displays all vulnerability results and details on the Snyk Security Report tab in TeamCity.
If the severity threshold was specified for a severity that is assigned to any vulnerability identified in your project, TeamCity breaks the build. Otherwise, TeamCity continues to run the build to completion (success or failure) and Snyk activity ends.


If the user configured the Monitor project on build option, Snyk now runs the snyk monitor command and proceeds with the remainder of the steps as described here.
Snyk takes a snapshot of the project, analyzes the manifest file of your project to find its direct and transitive dependencies, and tests your project against the Snyk vulnerability database for known vulnerabilities.
Snyk pushes the snapshot to the Snyk UI. The snapshot displays the project details and the dependency hierarchy as well as vulnerability results and fix advice.
If the severity threshold was specified for a severity that is assigned to any vulnerability in your project, TeamCity breaks the build.
Once the snapshot is pushed to the Snyk UI, Snyk continues to monitor your project as new vulnerabilities are disclosed. Based on your configuration, if vulnerabilities are found, Snyk notifies you by email or Slack so that you can take immediate fix action.



For information on how to configure your build with a Snyk step, see Team City integration: use Snyk in your build.
