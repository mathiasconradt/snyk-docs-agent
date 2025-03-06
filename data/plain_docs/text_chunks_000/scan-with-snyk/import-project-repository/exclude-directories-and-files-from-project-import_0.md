Files are excluded from the retest and, therefore, are not tested by Snyk Code and do not appear in the Code Analysis results.If you import a Project through an SCM integration, add the exclusions, folders only, to the bottom of the import window.
Exclude folders
When you import a repository to be tested by Snyk Code, you can exclude certain directories and files from the import by using the .snyk file. The .snyk file is a YAML policy file that can contain shell matching patterns (regular expressions), which allow you to specify the directories and files you want to exclude from the import process. The .snyk file should be created in the repository you intend to import.

* In Snyk Code, the .snyk file can only be used to exclude directories and files from import. It cannot be used to ignore vulnerabilities or for any other action, as in other Snyk products.
* Currently, the exclude option in the .snyk file applies only to the Snyk Web UI and CLI Environments. The exclude option cannot be used when working with Snyk Code in an IDE environment.
* In certain situations, your excluded files may not be excluded if there is an invalid .snyk file. In these situations, the scan continues without the .snyk file.


Consider excluding directories and files only if you do not publish or compile them into production. If a trace goes through an excluded file or directory with existing vulnerabilities, Snyk might miss potential issues.

You can also use the instructions in this section to exclude directories and files from the Snyk Code CLI test, by creating the .snyk file in your tested repository.
