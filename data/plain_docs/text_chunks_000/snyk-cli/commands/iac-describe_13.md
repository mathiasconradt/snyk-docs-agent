--service=<SERVICE>[,<SERVICE>...]
Specify the services to inspect for unmanaged resources.
This option cannot be used with a .snyk drift ignore rule; the content in .snyk will be ignored.
Supported services: aws_s3, aws_ec2, aws_lambda, aws_rds, aws_route53, aws_iam , aws_vpc, aws_api_gateway, aws_apigatewayv2, aws_sqs, aws_sns, aws_ecr, aws_cloudfront, aws_kms, aws_dynamodb, azure_base, azure_compute, azure_storage, azure_network, azure_container, azure_database, azure_loadbalancer, azure_private_dns, google_cloud_platform, google_cloud_storage, google_compute_engine, google_cloud_dns, google_cloud_bigtable, google_cloud_bigquery, google_cloud_functions, google_cloud_sql, google_cloud_run
