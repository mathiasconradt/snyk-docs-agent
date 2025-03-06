Consider the following example of defining an S3 bucket with an ACL using Terraform v3.x.x in a file named s3.tf

hcl
resource "aws_s3_bucket" "example" {
  # ... other configuration ...
  acl = "public-read-write"
}

The definition of the S3 bucket is in one resource block. If you scanned this file using snyk iac test s3.tf you would get a security finding for the permissive ACL settings.
With v4.0.0 of the Provider, certain S3 bucket properties are now defined in their own resources. Continuing the previous example, the ACL property has moved to its own resource, so the refactored Terraform looks like this.

```hcl
resource "aws_s3_bucket" "example" {
  # ... other configuration ...
}
resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.example.id
  acl    = "public-read-write"
}
```

If you scan this file using snyk iac test s3.tf you will get the same results as before for the permissive ACL settings.
