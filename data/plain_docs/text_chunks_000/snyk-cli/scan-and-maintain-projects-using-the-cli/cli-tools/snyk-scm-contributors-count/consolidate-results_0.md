description: How to use the consolidateResults command
consolidateResults command
When you work with the SCM-Contributors-Count tool, you may work with more than one source control manager (SCM). You will run a separate command for each SCM to get the contributors count for your repos there.
For example: If you have a contributor that commits to both GitHub repos and Bitbucket projects, you'll see that contributor's details in the output for both SCMs.
If you want to get an overall picture of all your contributors across all the SCMs, use the consolidateResults command.
This command allows you to take multiple (json) outputs of snyk-scm-contributors-count commands for different SCMs and consolidate them into one file, with a unique contributors count and a total of the repos from all SCMs.
The following options are available for the consolidateResults command:
--version                 Show version number                        [boolean]
  --help                    Show help                                  [boolean]
  --folderPath              Path to a folder containing the json outputs        [required]
