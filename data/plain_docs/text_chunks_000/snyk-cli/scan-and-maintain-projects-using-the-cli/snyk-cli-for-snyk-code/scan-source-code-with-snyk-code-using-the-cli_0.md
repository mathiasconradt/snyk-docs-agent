Snyk Code enables you to test the source code of your repositories using the Snyk CLI.
When testing your repository code via the CLI, you can:

Test the repository directly from its root folder.
Test the repository from another location.

When you test a folder, all its sub-folders and files are also tested. You can test a single file in the current folder, or a single file in another folder by specifying the absolute path to the file.
You can also test files with a relative path reference by prefixing the path with $PWD, for example,  snyk code test $PWD/path/to/file. This works with bash.
To exclude certain directories or files from the Snyk Code CLI test, you can use the following means:

The  snyk ignore --file-path command. See Excluding directories and files from the Snyk Code test.
Manually creating a .snyk file in the tested folder. See Excluding directories and files from the import process.
