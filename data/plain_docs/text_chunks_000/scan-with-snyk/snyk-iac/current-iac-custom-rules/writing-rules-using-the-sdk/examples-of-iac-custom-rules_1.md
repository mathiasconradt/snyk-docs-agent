Try and extend the preceding example  and update the rule to allow all cases that satisfy two conditions:

A resource has an “owner” tag\
   AND
A resource has a “description” tag

To test this new condition, generate a new rule CUSTOM-RULE-2 using the template command and write the following fixture file:

resource "aws_redshift_cluster" "denied" {
  cluster_identifier = "tf-redshift-cluster"
  node_type          = "dc1.large"
  tags = {
    owner = "team-123"
  }
}

Joining multiple expressions together expresses logical AND.

You can do this with the ; operator.
Or, you can omit the ; (AND) operator by splitting expressions across multiple lines.


The logical AND is covered also in the OPA documentation.


```
package rules
aws_redshift_cluster_tags_present(resource) {
    resource.tags.owner
    resource.tags.description
}
deny[msg] {
    resource := input.resource.aws_redshift_cluster[name]
    not aws_redshift_cluster_tags_present(resource)
    msg := {
        "publicId": "CUSTOM-RULE-2",
        "title": "Missing a description and an owner from the tag",
        "severity": "medium",
        "msg": sprintf("input.resource.aws_redshift_cluster[%s].tags", [name]),
        "issue": "",
        "impact": "",
        "remediation": "",
        "references": [],
    }
}
```


Snyk recommends always validating that your rule is correct by updating and running the unit tests.

The test for this rule will look the same as the one for CUSTOM-RULE-1, but the name of the test and the first two arguments passed to the testing.evaluate_test_cases function will differ:

```
package rules
import data.lib
import data.lib.testing
test_CUSTOM_RULE_2 {
    # array containing test cases where the rule is allowed
    allowed_test_cases := [{
        "want_msgs": [],
        "fixture": "allowed.tf",
    }]
    # array containing cases where the rule is denied
    denied_test_cases := [{
        "want_msgs": ["input.resource.aws_redshift_cluster[denied].tags"],
        "fixture": "denied.tf",
    }]
    test_cases := array.concat(allowed_test_cases, denied_test_cases)
    testing.evaluate_test_cases("CUSTOM-RULE-2", "./rules/CUSTOM-RULE-2/fixtures", test_cases)
}
```
