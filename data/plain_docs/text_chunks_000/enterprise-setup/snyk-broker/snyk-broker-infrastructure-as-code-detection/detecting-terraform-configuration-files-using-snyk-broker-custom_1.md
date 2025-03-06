The Terraform scanning features need access to the .tf files from the repository. This requires specific API permissions. These API permissions are slightly different depending on which source control system you are using.

Find the appropriate accept.json sample file for your source control system and download it from the Broker repository.
Rename the file to accept.json and to the private array in the JSON file, add the rules that follow as appropriate to your SCM.
Follow the instructions for Configuring Broker.
