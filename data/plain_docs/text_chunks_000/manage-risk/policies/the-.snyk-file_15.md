If there is a .snyk file in the Project, thesnyk test CLI command uses that file as the ignore mechanism instead of the ignores set in the Web UI. This means that if you have a .snyk file in the Project and you are using the snyk test command through the CLI, Snyk overrides all settings made in the Snyk Web UI.
However, when the .snyk file is included in an SCM Project, Snyk considers both the database ignores and the .snyk ignores.
If Admin users only is enabled by using Settings > General > Ignores, you can use a .snyk file to override the ignore rules in the database. To override the ignore rules set in the Web UI, you must specify that Admin users only can ignore an issue or edit the ignore settings for an issue.
To set these ignore preferences for use by the Snyk Web UI and API:

Log in to your Snyk account.
Select Settings, then General.
Select an option as follows:
Admin users only - only admins can customize the ignore settings.
All users in any environment - all users can customize the ignore settings.
