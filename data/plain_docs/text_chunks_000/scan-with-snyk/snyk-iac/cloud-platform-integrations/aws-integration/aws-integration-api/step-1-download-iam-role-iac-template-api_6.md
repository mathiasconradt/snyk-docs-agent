By default, the name of the Snyk IAM role is snyk-cloud-role. If your Organization has specific role naming requirements, you have the option to change this name in the Terraform or CloudFormation template.
In Terraform, the role name is on line 19:
name                = "snyk-cloud-role"
In CloudFormation, the role name is on line 7:
RoleName: snyk-cloud-role
