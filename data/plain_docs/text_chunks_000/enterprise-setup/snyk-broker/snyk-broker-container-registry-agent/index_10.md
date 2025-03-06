ECR setup requires that the following kinds of IAM resources be created:

Container Registry Agent IAM Role or IAM User: an IAM Role or IAM User the Agent uses to assume a cross-account role with access to ECR. It should have the following permissions: "sts:AssumeRole".

Snyk ECR Service Role: an IAM Role with access to ECR which is assumed by the Container Registry Agent IAM Role or IAM User to gain read-only access to ECR.\
    The ECR Service Role should have the following permissions:
[
  "ecr:GetLifecyclePolicyPreview",
  "ecr:GetDownloadUrlForLayer",
  "ecr:BatchGetImage",
  "ecr:DescribeImages",
  "ecr:GetAuthorizationToken",
  "ecr:DescribeRepositories",
  "ecr:ListTagsForResource",
  "ecr:ListImages",
  "ecr:BatchCheckLayerAvailability",
  "ecr:GetRepositoryPolicy",
  "ecr:GetLifecyclePolicy"
]
