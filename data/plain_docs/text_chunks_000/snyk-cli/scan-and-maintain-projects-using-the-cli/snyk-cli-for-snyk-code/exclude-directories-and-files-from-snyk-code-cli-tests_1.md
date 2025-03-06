Follow these steps to exclude Snyk Code directories and files from the CLI test:
1. In the terminal, change the directory to the folder you want to test.
The command snyk ignore --file-path applies only to the folder from which you are running it and the sub-folders and files of that folder.
2. In the terminal, enter the following:
snyk ignore --file-path=<directory_or_file>
where directory_or_file is the name of the directory or file you want to exclude from the test, for example, db.js.
The .snyk file is created in the root folder, containing the directory or file that was specified for exclusion.
The .snyk file is created as a hidden file. If you do not see it in your root folder, use the View hidden files option on your machine.
3. Optionally, to specify several directories or files for exclusion enter:
snyk ignore --file-path=<directory1_or_file1> && snyk ignore --file-path=<directory2_or_file2> && snyk ignore --file-path=<directory3_or_file3>
From now on, when you run the snyk code test command from the selected folder, the specified directories or files will be excluded from the test.
