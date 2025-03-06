In the newly created user page, in the Permissions tab create an Inline policy.
In Service choose STS.
In Actions choose Write→AssumeRole.
In Resources choose All resources (you will harden the resources in a later step).

In the JSON tab verify that the policy contains the following statement:
{
  Version: 2012-10-17,
  Statement: [
    {
      Sid: SnykCraAssumeRolePolicy,
      Effect: Allow,
      Action: sts:AssumeRole,
      Resource: *
    }
  ]
}
6. Review the policy and provide a policy name: SnykCraAssumeRolePolicy.
7. Choose to create the policy.
