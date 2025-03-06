Snyk integrates with your Microsoft Azure Repository to let you import Projects and monitor the source code for your repositories. Snyk tests the Projects you have imported for known security vulnerabilities in the dependencies, testing at a frequency you control.
The Azure Repository integration lets you:

Continuously perform security scanning across all the integrated repositories
Detect vulnerabilities in your open-source components
Provide automated fixes and upgrades

After the integration is configured, Snyk does the following:

Evaluates the items you selected and imports the ones that have the relevant manifest files in their root folder and all the subfolders at any level.
Communicates directly with your repository for each test it runs using the permissions you associated with your PAT, to determine exactly which code is currently pushed by the Snyk application and which dependencies are being used. Each dependency is tested against the Snyk vulnerability database to see if it contains any known vulnerabilities.
Notifies you by email or a dedicated Slack channel if vulnerabilities are found according to the preferences you configured, so that you can take immediate action to fix the issues.
