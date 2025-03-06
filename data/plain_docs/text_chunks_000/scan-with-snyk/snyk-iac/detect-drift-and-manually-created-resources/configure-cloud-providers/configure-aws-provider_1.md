If you want to use a different set of AWS credentials to read your state on S3, you can override each specific AWS environment variable with the DCTL_S3_ prefix. The purpose is to have the choice to read a state in a different region from your infrastructure. Remember to use your usual AWS credentials to read the resources of your actual infrastructure.
```
