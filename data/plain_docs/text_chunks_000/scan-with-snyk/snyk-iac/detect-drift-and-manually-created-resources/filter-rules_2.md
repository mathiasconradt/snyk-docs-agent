$ snyk iac describe --filter=$'Type==\'aws_s3_bucket\' && Id!=\'my-bucket-name\''
Ignore buckets with an ID prefix of 'terraform-'
$ snyk iac describe --filter=$'!(Type==\'aws_s3_bucket\' && starts_with(Id, \'terraform-\'))'
