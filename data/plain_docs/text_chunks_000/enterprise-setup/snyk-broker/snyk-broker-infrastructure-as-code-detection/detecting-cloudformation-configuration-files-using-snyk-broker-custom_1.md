The CloudFormation scanning features require access to the YAML or JSON files in the repository. This requires specific API permissions. These API permissions are slightly different depending on the source control system.

Find the appropriate accept.json sample file for the correct source control system and download from the Broker repository.
Rename the file accept.json and add to the private array in the JSON file, add the rules that follow as appropriate to your SCM .
Follow the instructions for Configuring Broker.
