You can create the .snyk file by using the snyk ignore command. For details, see the Ignore command CLI help.
If you do not have an existing .snyk file, you can create one and populate it with the following code:\
# Snyk (https://snyk.io) policy file, patches or ignores known vulnerabilities\
version: v1.25.0

You must set the version to v1.25.0 as this is the current policy schema version.
The ignore block or blocks must follow the relevant syntax as shown in the description of the ignore command or the examples on this page.

For more information, see Syntax of the .snyk file.

Snyk also provides the snyk-policy package to create a policy file, typically named .snyk. The version of the package is not the same as the policy schema version to be entered in the .snyk file.
