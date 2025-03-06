Run the snyk-scm-contributors-count command for each repo with the --json flag and send the output to a designated folder, for example:

snyk-scm-contributors-count github --token TOKEN --json > PathToFolder/FileName
snyk-scm-contributors-count github-enterprise --token TOKEN --json > PathToFolder/OtherFileName

Run the consolidateResults command and apply the --folderPath flag with the path to the designated, read/write accessible folder that contains the different output json files with the individual SCM results.

snyk-scm-contributors-count consolidateResults --folderPath PathToFolder

The tool will then look for valid files in the folder, read the content of the files, create a new file with consolidated, unique results from all the files that have been read, and name the new fileconsolidated-results.json.
