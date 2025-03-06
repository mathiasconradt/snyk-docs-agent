Example of a simple boolean rule

You can find a full example of this guide in this OPA Playground and the snyk/custom-rules-example repository.

Assume you have generated a new rule, CUSTOM-RULE-1 using the SDK , that is, snyk-iac-rules template --rule CUSTOM-RULE-1 and have a very simple fixture file containing a Terraform resource:

resource "aws_redshift_cluster" "denied" {
  cluster_identifier = "tf-redshift-cluster"
  node_type          = "dc1.large"
  tags = {
  }
}

Now, modify the generated Rego to enforce resources tagged with an owner:

Create a variable [name] to enumerate across all of the aws_redshift_cluster resources. This variable can be named anything you like, for example, i, j, name, and so on.
Store this into the resource variable by assigning the value to it with a walrus operator :=; e.g. resource := input.resource.aws_redshift_cluster[name]
Check whether the owner tag exists for each resource; to do that, check if the path resource.tags.owner is defined. If it is undefined, it will evaluate as undefined. So, use the NOT keyword in front of it, which will evaluate to TRUE; for example,not resource.tags.owner

The modified Rego is:

```
package rules
deny[msg] {
    resource := input.resource.aws_redshift_cluster[name]
    not resource.tags.owner
msg := {
    "publicId": "CUSTOM-RULE-1",
    "title": "Missing an owner from tag",
    "severity": "medium",
    "msg": sprintf("input.resource.aws_redshift_cluster[%s].tags", [name]),
    "issue": "",
    "impact": "",
    "remediation": "",
    "references": [],
}

}
```


To understand how the Rego code evaluates the Terraform file provided earlier, have a look at how the SDK is able to parse a fixture file into JSON.


Snyk recommends always validating that your rule is correct by updating and running the unit tests.

The test for this rule verifies that the Rego rule can identify that the fixture at the beginning of this guide is invalid:

```
package rules
import data.lib
import data.lib.testing
test_CUSTOM_RULE_1 {
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
testing.evaluate_test_cases("CUSTOM-RULE-1", "./rules/CUSTOM-RULE-1/fixtures", test_cases)

}
```
