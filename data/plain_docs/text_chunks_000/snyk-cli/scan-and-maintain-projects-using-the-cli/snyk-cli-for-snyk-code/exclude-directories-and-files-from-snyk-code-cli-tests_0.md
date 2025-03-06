When you test a Snyk Code repository using the CLI, you can exclude certain directories and files from the CLI test by using the snyk ignore --file-path command. When you run this command, the .snyk file is created automatically in your repository, containing the name of the directory or file you specified for exclusion.

* You can also create the .snyk file manually in your repository, and use it to exclude directories and files from the CLI test. For more information about the manual creation of the .snyk file, see Excluding directories and files from the import process.
* The snyk ignore --file-path command does not ignore specific vulnerability issues. It excludes only directories and files from the CLI test.
* Consider excluding directories and files only if you do not publish or compile them into production. If a trace goes through an excluded file or directory with existing vulnerabilities, Snyk might miss potential issues.
