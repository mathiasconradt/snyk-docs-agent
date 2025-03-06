You can also rewrite the rule above by combining the NOT operator with the OR functionality.
Update the example in a new rule CUSTOM-RULE-3, to deny all cases that fail either of the two conditions, to deny all aws_redshift_cluster resources that are missing either:

an “owner” tag , OR
A “description” tag

For this, use two new fixture files, one for each case:

resource "aws_redshift_cluster" "denied1" {
  cluster_identifier = "tf-redshift-cluster"
  node_type          = "dc1.large"
  tags = {
    owner = "team-123@corp-domain.com"
  }
}


resource "aws_redshift_cluster" "denied2" {
  cluster_identifier = "tf-redshift-cluster"
  node_type          = "dc1.large"
  tags = {
    description = "description",
  }
}

To express logical OR in Rego, define multiple rules or functions with the same name. This is also described in the OPA documentation for Logical OR.
First, add a function that will implement the NOT for each tag. Then, call this function with the resource:

```
package rules
aws_redshift_cluster_tags_missing(resource) {
    not resource.tags.owner
}
aws_redshift_cluster_tags_missing(resource) {
    not resource.tags.description
}
deny[msg] {
    resource := input.resource.aws_redshift_cluster[name]
    aws_redshift_cluster_tags_missing(resource)
    msg := {
        "publicId": "CUSTOM-RULE-3",
        "title": "Missing a description or an owner from the tag",
        "severity": "medium",
        "msg": sprintf("input.resource.aws_redshift_cluster[%s].tags", [name]),
        "issue": "",
        "impact": "",
        "remediation": "",
        "references": [],
    }
}
```

This will successfully return all the rules that deny.

Snyk recommends always validating that your rule is correct by updating and running the unit tests.

The test for this rule will now contain multiple test cases, to show that the logical OR works as expected:

```
package rules
import data.lib
import data.lib.testing
test_CUSTOM_RULE_3 {
    # array containing test cases where the rule is allowed
    allowed_test_cases := [{
        "want_msgs": [],
        "fixture": "allowed.tf",
    }]
    # array containing cases where the rule is denied
    denied_test_cases := [{
        "want_msgs": ["input.resource.aws_redshift_cluster[denied1].tags"],
        "fixture": "denied1.tf",
    },{
        "want_msgs": ["input.resource.aws_redshift_cluster[denied2].tags"],
        "fixture": "denied2.tf",
    }]
    test_cases := array.concat(allowed_test_cases, denied_test_cases)
    testing.evaluate_test_cases("CUSTOM-RULE-3", "./rules/CUSTOM-RULE-3/fixtures", test_cases)
}
```
