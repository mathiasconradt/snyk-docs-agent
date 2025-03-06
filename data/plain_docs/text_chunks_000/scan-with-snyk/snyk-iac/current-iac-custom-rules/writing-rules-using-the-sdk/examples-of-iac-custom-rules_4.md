Now assume you want to add more complexity and check the following:

If the tag type is a “user”, then the tag “email” exists as well.
If not, assuming the other type is a “service”, we want it has a serviceDescription.
These two will be mutually exclusive; if the first condition applies, the second one does not, and vice versa.

| Type    | Email | ServiceDescription |
| ------- | ----- | ------------------ |
| User    | YES   | NO                 |
| Service | NO    | YES                |
To do this, refactor your code to use a checkTags helper function. This can check whether there are any tags, but also check for the two conditions above with an OR.

```
package rules
checkTags(resource){
    resource.tags.type == "user"
    not resource.tags.email
}
checkTags(resource){
    resource.tags.type == "service"
    not resource.tags.serviceDescription
}
checkTags(resource){
    count(resource.tags) == 0
}
deny[msg] {
    resource := input.resource.aws_redshift_cluster[name]
    checkTags(resource)   
msg := {
    "publicId": "CUSTOM-RULE-5",
    "title": "Complex rule",
    "severity": "medium",
    "msg": sprintf("input.resource.aws_redshift_cluster[%v].tags", [name]),
    "issue": "",
    "impact": "",
    "remediation": "",
    "references": [],
}

}
```

To convert this to an XOR you can use an else rule:

```
package rules
checkUserTag(resource){
    not resource.tags.email
}
checkUserTag(resource){
    resource.tags.serviceDescription
}
checkServiceTag(resource){
    not resource.tags.serviceDescription
}
checkServiceTag(resource){
    resource.tags.email
}
checkTags(resource){
    count(resource.tags) == 0
}
checkTags(resource) {
    resource.tags.type == "user"
    checkUserTag(resource)
} else {
    resource.tags.type == "service"
    checkServiceTag(resource)
}
deny[msg] {
    resource := input.resource.aws_redshift_cluster[name]
    checkTags(resource)
    msg := {
        "publicId": "CUSTOM-RULE-5",
        "title": "Missing the right tags from for a resource of type user or service",
        "severity": "medium",
        "msg": sprintf("input.resource.aws_redshift_cluster[%v].tags", [name]),
        "issue": "",
        "impact": "",
        "remediation": "",
        "references": [],
    }
}
```

If you want to try it out yourselves, use the same example in this OPA Playground.

Snyk recommends always validating that your rule is correct by updating and running the unit tests.

The test for this rule will look very similar to the ones from the previous example and will also require its own fixture file.
