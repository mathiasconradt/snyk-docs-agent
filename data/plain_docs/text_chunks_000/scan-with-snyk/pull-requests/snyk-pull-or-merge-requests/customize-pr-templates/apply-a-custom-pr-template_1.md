Create the YAML file
Manually create the YAML template by using the mustache syntax for templating and add the file to your Project or repository.
When a custom template is uploaded to your Project, all PRs from Snyk for the Project adopt this format, effectively switching off the default Snyk template for the customized properties. Strings are the only acceptable values; lists and numbers are not allowed. If any customizable properties are missing from your template, Snyk reverts to the default values for these properties when opening a pull request.
