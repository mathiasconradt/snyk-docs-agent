Updates for ignores
The snyk ignore command for an ISSUE_ID updates your local .snyk file to contain a block similar to the following:
yaml
ignore:
  '<ISSUE_ID>':
    - '*':
        reason: <REASON>
        expires: <EXPIRY>
When you use the --path option for an ignore, the block is similar to this:
yaml
ignore:
  '<ISSUE_ID>':
    - '<PATH_TO_RESOURCE>':
        reason: <REASON>
        expires: <EXPIRY>
