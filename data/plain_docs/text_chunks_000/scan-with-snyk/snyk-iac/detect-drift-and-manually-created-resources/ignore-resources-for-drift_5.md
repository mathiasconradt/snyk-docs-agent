version: v1.22.1
exclude:
  iac-drift:
      # Will ignore S3 bucket called my-bucket
    - aws_s3_bucket.my-bucket
      # Will ignore every aws_instance resource
    - aws_instance.
      # Will ignore environment for all lambda functions
    - aws_lambda_function..environment
      # Will ignore resources like aws_iam_role.AmazonSSMRoleForInstances and aws_iam_role.AWSServiceRoleForAmazonSSM
    - role.Amazon*
      # Will ignore lastModified for my-lambda-name lambda function
    - aws_lambda_function.my-lambda-name.last_modified
```
