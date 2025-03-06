In Rego, you can write statements that allow or deny a request, such as:\
allow  or deny 

If the template command was used to generate the rules, then the default entry point is rules/deny. To override it and use a different name from deny, refer to the section Bundling Rules.

This is what a generated skeleton of a deny rule looks like when you run snyk-iac-rules template --rule NEW-RULE --format hcl2:

```
package rules
deny[msg] {
    resource := input.resource.test[name]
    resource.todo
    msg := {
        # Mandatory fields
        "publicId": "NEW-RULE",
        "title": "Default title",
        "severity": "low",
        "msg": sprintf("input.resource.test[%s].todo", [name]),
        # Optional fields
        "issue": "",
        "impact": "",
        "remediation": "",
        "references": [],
    }
}
```


You must follow this format of the msg property to ensure the output is displayed correctly from the Snyk IaC CLI.

The attributes are:

publicId: a naming convention unique to your team, such as COMPANY-001. This should not contain/start with “SNYK-” to differentiate it from the internal Snyk rules.
title: a short title that should summarise the issue.
severity: this can be one of low/medium/high/critical.
msg: Snyk recommends changing only the resource name and property, for example,input.aws_s3_bucket[%s].tags to match your example. The function sprintf is provided by Rego and enables Snyk to provide a dynamic error message explaining exactly where the issue was found.

The following attributes are optional but can be used to enhance the scan results in the Snyk CLI:

issue: a more detailed string explanation of what the exact issue is.
impact: a more detailed string explanation of what the impact of not resolving this issue is.
remediation: a more detailed string explanation of how to resolve the issue. Snyk recommends providing a code snippet here.
references: you can provide an array of strings with URLs to documentation

The generated test for the rule uses two generated Terraform files to verify if the correct msg field is returned by the rule for allowed and denied fixtures:
```
package rules
import data.lib
import data.lib.testing
test_NEW_RULE {
    # array containing test cases where the rule is allowed
    allowed_test_cases := [{
        "want_msgs": [],
        "fixture": "allowed.tf",
    }]
# array containing cases where the rule is denied
denied_test_cases := [{
    "want_msgs": ["input.resource.test[denied].todo"], # verifies that the correct msg is returned by the denied rule
    "fixture": "denied.tf",
}]

test_cases := array.concat(allowed_test_cases, denied_test_cases)
testing.evaluate_test_cases("NEW-RULE", "./rules/NEW-RULE/fixtures", test_cases)

}
```
