Additional flags can be set for the command:

Create an import file with unmonitored repos data to use with the snyk-api-import tool and import the repos to my Snyk account. Works only with Bitbucket and Azure. Apply the importConfDir flag with a path to a valid and writable folder where you will save the import files. This flag correlates with the importFileRepoType flag.
Choose which types of repos to add to the import file. Works only with Bitbucket and Azure. Apply the importFileRepoType flag with one of these options: all, private, or public.
Exclude committers from being counted. Apply the exclusionFilePath flag to the command with a path to a text file that contains the emails of the committers that you would like to be excluded from the count.
Output the summary and results in a json format. Apply the json flag to the command.
