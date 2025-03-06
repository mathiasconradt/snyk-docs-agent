$ snyk iac describe --filter="Type=='aws_s3_bucket'"
OR (beware of escape your shell special chars between double quotes)
$ snyk iac describe --filter=$'Type==\'aws_s3_bucket\''
