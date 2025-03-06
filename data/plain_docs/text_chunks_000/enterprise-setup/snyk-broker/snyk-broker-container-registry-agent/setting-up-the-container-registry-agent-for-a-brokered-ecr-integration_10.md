Go to AWS to log in to the AWS Management Console with the IAM service and navigate to the Policies page.
Create a new policy.
Choose to edit the JSON data.

Delete the default data and in its place copy and paste the following:
{
  Version:2012-10-17,
  Statement: [
    {
      Sid:SnykAllowPull,
      Effect:Allow,
      Action: [
        ecr:GetLifecyclePolicyPreview,
        ecr:GetDownloadUrlForLayer,
        ecr:BatchGetImage,
        ecr:DescribeImages,
        ecr:GetAuthorizationToken,
        ecr:DescribeRepositories,
        ecr:ListTagsForResource,
        ecr:ListImages,
        ecr:BatchCheckLayerAvailability,
        ecr:GetRepositoryPolicy,
        ecr:GetLifecyclePolicy
      ],
      Resource:*
    }
  ]
}
5. Choose to review the policy.
6. Set AmazonEC2ContainerRegistryReadOnlyForSnyk as the Name.
7. Set Provides Container Registry Agent with read-only access to Amazon EC2 Container Registry repositories as the description.
8. Choose to create the policy.
