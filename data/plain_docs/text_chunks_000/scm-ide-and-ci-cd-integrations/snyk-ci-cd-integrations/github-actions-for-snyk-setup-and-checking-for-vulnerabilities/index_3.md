The Snyk GitHub Action for Open Source languages and package managers has properties which are passed to the underlying image using with.
| Property | Default | Description                                                                                                                                                |
| -------- | ------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- |
| args     |         | Override the default arguments to the Snyk image. See Snyk CLI commands and options summary for all options |
| command  | test    | Specify which command to run, for instance test or monitor                                                                                                 |
| json     | false   | In addition to the stdout, save the results as snyk.json                                                                                                   |
For the properties associated with the other Snyk GitHub Actions, see the pages listed in the section GitHub Actions for Snyk Container and Snyk Infrastructure as Code and Snyk Setup Action.
