$ snyk iac describe --filter=$'!(Type==\'aws_s3_bucket\' && ends_with(Id, \'-test\'))'
```
