For details, runsnyk iac update-exclude-policy --help.
This command helps to generate a .snyk policy file, adding all the detected drifts to it in order to ignore them all.
For example, to ignore all the unmanaged resources at once, run the following command:
$ snyk iac describe --json | snyk iac update-exclude-policy
