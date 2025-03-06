version: v1.22.1
exclude:
  iac-drift:
    - '*'
    - '!aws_s3_bucket'
```

Ignore a specific IAM Policy Attachment (AWSServiceRoleForRDS) using its ARN (arn:aws:iam::aws:policy/aws-service-role/AmazonRDSServiceRolePolicy).

```yaml
