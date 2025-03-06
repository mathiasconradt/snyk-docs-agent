You must grant the Broker access to particular files in the repository. This requires specific API permissions. These API permissions are slightly different depending on which source control system you are using. The configuration that follows is for the file extensions .yaml, .yml, and .json. This allows the Broker to access potential Kubernetes and CloudFormation files, but you may adapt the configuration as necessary. For example, you may wish to add configurations for .tf files in order to scan Terraform HCL files.

Find the appropriate accept.json sample file for your source control system and download it from the Broker repository.
Rename the file to accept.json and to the private array in the JSON file, add the following rules as appropriate to your SCM.
Follow the instructions for Configuring Broker.
