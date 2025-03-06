When using strict mode with an AWS account, you may experience unnecessary noise from resources that do not belong to you.
This can happen if you have an Organization account in which you, by default, have a service-linked role associated with your account; for example, AWSServiceRoleForOrganizations.
Example to enable strict mode:
snyk iac describe --strict
