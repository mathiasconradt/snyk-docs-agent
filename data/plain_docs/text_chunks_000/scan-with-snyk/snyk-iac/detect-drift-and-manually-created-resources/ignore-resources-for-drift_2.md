version: v1.22.1
exclude:
  iac-drift:
    - aws_s3_bucket.*
```

The .snyk policy file also supports the negation of rules. This allows you to ignore everything except certain types. In this example, only S3 buckets will not be ignored:

```yaml
