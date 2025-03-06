$ snyk ignore --id='SNYK-JS-PATHPARSE-1077067' --expiry='2021-01-10' --path='nyc@11.9.0
Ignore a specific vulnerability with a resource path specified (Windows) 
In this example, snyk iac test on Windows returned a Path containing single quotes and a File specification containing back slashes:
Rule: https://security.snyk.io/rules/cloud/SNYK-CC-TF-118\
Path: resource > aws_iam_roleOrganizationAccountAccessRole] > assume_role_policy['Statement'\
File: terraform\environment\com\iam.tf
The corresponding snyk ignore command would be:
snyk ignore --id=SNYK-CC-TF-118 --path="terraform\environment\com\iam.tf > resource > aws_iam_roleOrganizationAccountAccessRole] > assume_role_policy['Statement'"
