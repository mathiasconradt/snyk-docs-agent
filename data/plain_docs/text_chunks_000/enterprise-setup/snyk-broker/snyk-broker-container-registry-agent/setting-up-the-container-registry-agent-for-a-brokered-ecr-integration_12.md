This step hardens the usability of the Snyk ECR Service Role so that it could be assumed only by the Container Registry Agent IAM Role or IAM Role.

Again from the Roles page, find and select the SnykEcrServiceRole to enter the Role configurations.
Select the Trust relationships tab.
Edit the trust relationship.

Delete all of the data and replace it with the following JSON:
{
  Version:2012-10-17,
  Statement: [
    {
      Effect:Allow,
      Principal:{
        AWS:ARN of Container Registry Agent IAM User or IAM Role
      },
      Action:sts:AssumeRole,
      Condition:{
        StringEquals: {
          sts:ExternalId:optional external ID
        }
      }
    }
  ]
}

In Statement.Principal.AWS enter the IAM Role or IAM User created in the Step 1 .\
  Example: arn:aws:iam::aws-account:user or SnykCraEc2Role\
  OR arn:aws:iam::aws-account:role or SnykCraUser, respectively
In Condition.StringEquals.sts:ExternalId you may use an external ID of your choice, which will be used when the credentials object is provided to the Broker Client.
To support multiple external IDs, enter a list of IDs in a square brackets.\
  Example: sts:ExternalId: [ 11111111-1111-1111-1111-111111111111, 22222222-2222-2222-2222-222222222222 ]
Update the trust policy.
