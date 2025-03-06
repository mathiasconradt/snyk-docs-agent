Extend this further and add a third condition. Deny all resources that are missing any of the following:

An “owner” tag , OR
A “description” tag, OR
The email of the owner does not belong to the “@corp-domain.com” domain


```
package rules
aws_redshift_cluster_tags_missing(resource) {
    not resource.tags.owner
}
aws_redshift_cluster_tags_missing(resource) {
    not resource.tags.description
}
aws_redshift_cluster_tags_missing(resource) {
    not endswith(resource.tags.owner, "@corp-domain.com")
}
deny[msg] {
    resource := input.resource.aws_redshift_cluster[name]
    aws_redshift_cluster_tags_missing(resource)
    msg := {
        "publicId": "CUSTOM-RULE-4",
        "title": "Missing a description and an owner from tag, or owner tag does not comply with email requirements",
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

The test for this rule will look very similar to the ones from previous example and will also require its own fixture file.
