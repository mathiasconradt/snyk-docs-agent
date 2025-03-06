Be sure you have the Bicep CLI installed.
After installing the Bicep CLI, navigate to the directory that contains your Bicep files and convert the relevant Bicep file to JSON by entering the following:
az bicep build -f deploy.bicep
You can then scan the newly created JSON file in the same way as any other file. Use the following Snyk CLI command:
snyk iac test deploy.json
