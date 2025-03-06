This step hardens the usability of the IAM Role or IAM User used by the Container Registry Agent so that it could assume only the SnykEcrServiceRole.

Copy the Role ARN key that appears at the top of the Summary section of the SnykEcrServiceRole.
In the AWS account where the IAM Role or IAM User was created for running the Container Registry Agent, edit the SnykCraAssumeRolePolicy:
If an IAM Role was created, go to Roles and choose the SnykCraEc2Role role.
In the SnykCraAssumeRolePolicy choose to edit the JSON.
Add the role ARN of SnykEcrServiceRole as the resource:\
     Resource: Role ARN of SnykEcrServiceRole


IF an IAM User was created, go to Users and choose the SnykCraUser user.
In the SnykCraAssumeRolePolicy choose to edit the JSON
Add the role ARN of SnykEcrServiceRole as the resource:\
     Resource: Role ARN of SnykEcrServiceRol



If the Container Registry Agent needs to access multiple ECR registries found in different accounts, you must add a separate item to the Statement list, so that each ECR account has a separate statement, for example:
{
  Version: 2012-10-17,
  Statement: [
    {
      Sid: SnykCraAssumeRolePolicyAccountA,
      Effect: Allow,
      Action: sts:AssumeRole,
      Resource: role ARN of SnykEcrServiceRole of account A
    },
    {
      Sid: SnykCraAssumeRolePolicyAccountB,
      Effect: Allow,
      Action: sts:AssumeRole,
      Resource: Role ARN of SnykEcrServiceRole of account B
    },
  ]
}
