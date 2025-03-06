In this example, snyk iac test on Linux or Mac OS returned a Path containing single quotes and a File specification containing forward slashes:
Rule: https://security.snyk.io/rules/cloud/SNYK-CC-TF-118\
Path: resource > aws_iam_roleOrganizationAccountAccessRole] > assume_role_policy['Statement'\
File: terraform/environment/com/iam.tf
The corresponding snyk ignore command would be:
snyk ignore --id=SNYK-CC-TF-118 --path="terraform/environment/com/iam.tf > resource > aws_iam_roleOrganizationAccountAccessRole] > assume_role_policy['Statement'"
