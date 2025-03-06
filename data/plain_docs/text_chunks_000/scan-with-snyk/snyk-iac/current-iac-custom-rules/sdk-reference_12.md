Generate a new rule with the name CUSTOM_RULE:
$ snyk-iac-rules template --rule CUSTOM_RULE
Test the rule:
$ snyk-iac-rules test --run CUSTOM_RULE
Generate the custom rules bundle:
$ snyk-iac-rules build --output bundle-v1.0.0.tar.gz
