description: Support and limitations for the Terraform AWS provider.

Version 4.0.0 of the AWS Terraform Provider introduced changes in how S3 services are defined. With v4.0, the definition of S3 services is now spread across several resource blocks within Terraform. If you defined an instance of an S3 bucket across multiple files, this update is a breaking change and may have negatively impacted your security results from Snyk IaC.


From the Terraform documentation: To help distribute the management of S3 bucket settings via independent resources, various arguments and attributes in the aws_s3_bucket resource have become read-only. Configurations dependent on these arguments should be updated to use the corresponding aws_s3_bucket_* resource.

To migrate to Terraform v4.0.0, you must refactor and re-import your S3 service definitions. Depending on how you choose to do this, it may limit your coverage of security findings.
See the Terraform V4 upgrade guide from Hashicorp for more details
