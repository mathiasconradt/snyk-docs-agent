When you have completed the following steps to connect Snyk to Jira, you can start triaging security issues in Jira.

Typically research and development engineering managers do this task because they own the Jira projects and know their team's code repositories.


In Jira, navigate to Project settings > Toolchain and find Snyk in the list of tools.\
   See What is the project toolchain in Jira Software?
Select the Add connection plus sign button for Snyk.
Choose the container code repository from the list and select Add container. This is a Snyk Target.\
   You can connect more than one code repository to Jira.

Developers can now use the security feature to view recent vulnerabilities found in the linked code repositories and start creating Jira issues from those vulnerabilities or linking them to existing Jira issues.

Issue syncing between Snyk and Jira happens asynchronously, meaning there may be a delay before issues appear in Jira.


Only security vulnerabilities will be shown on the Jira Security tab.
