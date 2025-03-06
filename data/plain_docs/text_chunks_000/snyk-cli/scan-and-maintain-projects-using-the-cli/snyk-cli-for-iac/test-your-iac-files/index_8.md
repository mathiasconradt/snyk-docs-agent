```
Snyk Infrastructure as Code
✔ Test completed.
Issues
Low Severity Issues: 1
[Low] API Gateway access logging disabled
  Info:    Amazon Api Gateway access logging is not enabled. Audit records may not be available during investigation
  Rule:    https://security.snyk.io/rules/cloud/SNYK-CC-TF-118
  Path:    resource > aws_api_gateway_stage[denied] > access_log_settings
  File:    aws_api_gateway_stage_logging.tf
  Resolve: Set access_log_settings attribute

Test Summary
Organization: demo-org
✔ Files without issues: 0
✗ Files with issues: 1
  Invalid files: 0
  Ignored issues: 0
  Total issues: 1 [ 0 critical, 0 high, 0 medium, 1 low ]
```
