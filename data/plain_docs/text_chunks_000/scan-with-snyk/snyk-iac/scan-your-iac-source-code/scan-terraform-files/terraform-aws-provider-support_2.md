You may choose to structure your code differently, for example, by having the S3 bucket definition and its associated properties in separate Terraform files:

hcl
resource "aws_s3_bucket" "example" {
  # ... other configuration ...
}


hcl
resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.example.id
  acl    = "public-read-write"
}

If you scan these files, you will either not receive a security issue or receive a false positive for the permissive ACL. This is because Snyk cannot currently link the two resources together.
Snyk is working on adding support for this additional use case to the product.
An interim workaround is to define the resources in a single Terraform file.
