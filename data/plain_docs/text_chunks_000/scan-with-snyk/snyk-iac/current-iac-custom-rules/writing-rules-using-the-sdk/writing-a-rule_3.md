For more examples, see Custom Rules Examples.

For this example, the templated rule was modified to assign a msg when a resource does not have an owner tag:

```
package rules
deny[msg] {
    resource := input.resource.aws_redshift_cluster[name]
    not resource.tags.owner
msg := {
    "publicId": "MY_RULE",
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
