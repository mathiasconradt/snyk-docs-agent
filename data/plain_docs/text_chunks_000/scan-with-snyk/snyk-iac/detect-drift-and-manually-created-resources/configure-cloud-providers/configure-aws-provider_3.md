$ DCTL_S3_REGION=us-east-1 snyk iac describe --from="tfstate+s3://mybucket/terraform.tfstate"
```
Terraform custom role​ 
The following code represents the custom role you can assume to run iac describe written in HCL.
```
data "aws_caller_identity" "current" {}
data "aws_iam_policy_document" "assume_role_policy" {
  statement {
    effect = "Allow"
    actions   = ["sts:AssumeRole"]
    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::$:root"]
    }
  }
}
data "aws_iam_policy_document" "policy" {
  statement {
    effect = "Allow"
    actions   = [
      "apigateway:GET",
      "cloudformation:DescribeStacks",
      "cloudformation:GetTemplate",
      "cloudfront:GetDistribution",
      "cloudfront:ListDistributions",
      "cloudfront:ListTagsForResource",
      "ec2:DescribeAddresses",
      "ec2:DescribeImages",
      "ec2:DescribeInstanceAttribute",
      "ec2:DescribeInstances",
      "ec2:DescribeInstanceCreditSpecifications",
      "ec2:DescribeInternetGateways",
      "ec2:DescribeKeyPairs",
      "ec2:DescribeNetworkAcls",
      "ec2:DescribeRouteTables",
      "ec2:DescribeSecurityGroups",
      "ec2:DescribeSnapshots",
      "ec2:DescribeTags",
      "ec2:DescribeVolumes",
      "ec2:DescribeVpcs",
      "ec2:DescribeVpcAttribute",
      "ec2:DescribeVpcClassicLink",
      "ec2:DescribeVpcClassicLinkDnsSupport",
      "ec2:DescribeSubnets",
      "ec2:DescribeNatGateways",
      "ec2:DescribeLaunchTemplates",
      "ecr:DescribeRepositories",
      "ecr:ListTagsForResource",
      "iam:GetPolicy",
      "iam:GetPolicyVersion",
      "iam:GetRole",
      "iam:GetRolePolicy",
      "iam:GetUser",
      "iam:GetUserPolicy",
      "iam:ListAccessKeys",
      "iam:ListAttachedRolePolicies",
      "iam:ListAttachedUserPolicies",
      "iam:ListPolicies",
      "iam:ListRolePolicies",
      "iam:ListRoles",
      "iam:ListUserPolicies",
      "iam:ListUsers",
      "kms:DescribeKey",
      "kms:GetKeyPolicy",
      "kms:GetKeyRotationStatus",
      "kms:ListAliases",
      "kms:ListKeys",
      "kms:ListResourceTags",
      "lambda:GetEventSourceMapping",
      "lambda:GetFunction",
      "lambda:GetFunctionCodeSigningConfig",
      "lambda:ListEventSourceMappings",
      "lambda:ListFunctions",
      "lambda:ListVersionsByFunction",
      "rds:DescribeDBInstances",
      "rds:DescribeDBSubnetGroups",
      "rds:ListTagsForResource",
      "route53:GetHostedZone",
      "route53:ListHostedZones",
      "route53:ListResourceRecordSets",
      "route53:ListTagsForResource",
      "route53:ListHealthChecks",
      "route53:GetHealthCheck",
      "s3:GetAccelerateConfiguration",
      "s3:GetAnalyticsConfiguration",
      "s3:GetBucketAcl",
      "s3:GetBucketCORS",
      "s3:GetBucketLocation",
      "s3:GetBucketLogging",
      "s3:GetBucketNotification",
      "s3:GetBucketObjectLockConfiguration",
      "s3:GetBucketPolicy",
      "s3:GetBucketRequestPayment",
      "s3:GetBucketTagging",
      "s3:GetBucketVersioning",
      "s3:GetBucketWebsite",
      "s3:GetEncryptionConfiguration",
      "s3:GetInventoryConfiguration",
      "s3:GetLifecycleConfiguration",
      "s3:GetMetricsConfiguration",
      "s3:GetReplicationConfiguration",
      "s3:ListAllMyBuckets",
      "s3:ListBucket",
      "sqs:GetQueueAttributes",
      "sqs:ListQueueTags",
      "sqs:ListQueues",
      "sns:ListTopics",
      "sns:GetTopicAttributes",
      "sns:ListTagsForResource",
      "sns:ListSubscriptions",
      "sns:ListSubscriptionsByTopic",
      "sns:GetSubscriptionAttributes",
      "dynamodb:ListTables",
      "dynamodb:DescribeTable",
      "dynamodb:DescribeGlobalTable",
      "dynamodb:ListTagsOfResource",
      "dynamodb:DescribeTimeToLive",
      "dynamodb:DescribeTableReplicaAutoScaling",
      "dynamodb:DescribeContinuousBackups",
      "rds:DescribeDBClusters",
      "rds:DescribeGlobalClusters",
      "application-autoscaling:DescribeScheduledActions",
      "autoscaling:DescribeLaunchConfigurations"
    ]
    resources = ["*"]
  }
}
resource "aws_iam_role" "snyk_assume_role" {
  name = "snyk_assume_role"
  assume_role_policy = data.aws_iam_policy_document.assume_role_policy.json
}
resource "aws_iam_role_policy" "snyk_policy" {
  name = "snyk_policy"
  role = aws_iam_role.snyk_assume_role.id
  policy = data.aws_iam_policy_document.policy.json
}
```
