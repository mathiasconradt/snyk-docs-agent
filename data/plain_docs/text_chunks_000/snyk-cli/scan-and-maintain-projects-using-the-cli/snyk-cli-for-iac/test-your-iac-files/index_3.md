When you provide no arguments, the command recursively traverses the current working directory and scans every file it finds:
snyk iac test
You can restrict the scan to a specific directory:
snyk iac test my-folder
You can limit the depth of the directories that are traversed. The current working directory has a depth of one; directories under the current working directory have a depth of two, and so on. For example, if you want to restrict the search to the current working directory and two more levels of directories, you can invoke the command like this:
snyk iac test --detection-depth=3
The command returns an error if you provide directory paths outside the current working directory. For example, this is not a valid invocation of the command:
snyk iac test ../my-folder
