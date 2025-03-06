Ignore a single IAM user (aws_iam_user) named "tfc-demo".

```yaml
Snyk (https://snyk.io) policy file, patches or ignores known vulnerabilities.
version: v1.22.1
exclude:
  iac-drift:
    - aws_iam_user.tfc-demo
```

Ignore all S3 buckets drifts.

```yaml
