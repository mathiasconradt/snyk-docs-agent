Use an exclude in a .snyk file to omit all scanning of certain files or folders from a Snyk Code scan. For details, see the --file-path option for the snyk ignore command, Ignore files or folders using glob expression - Snyk Code and unmanagedonly, and Exclude directories and files from Snyk Code CLI tests.
When you import a repository to test using Snyk Code, use an exclude: statement in the .snyk file to omit certain directories and files from the import. For details see For details see Exclude directories and files from Snyk Code CLI tests.
A .snyk file with file or folder exclusions and contained in the root directory of your repository or SCM will exclude those files and folders from being scanned when you import using an SCM.
The CLI --exclude option used with snyk test and snyk monitor does not apply for Code scans.
The Exclude Folders option in the import windows in the Web UI does not apply for Code scans.
The .snyk file does not apply for excluding files and directories from IDE scanning of Code.
For Code and Container scans only., you can use exclusion globs in API import, including an import with the snyk-api-import tool. This exclusion works the same way as an SCM integration exclusion.
