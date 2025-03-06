You can also iterate over many resources by adding them to an array of resources.
"resources": [
            "aws_iam_policy",
            "aws_iam_group_policy",
            "aws_iam_user_policy",
            "aws_iam_role_policy",
            "data.aws_iam_policy_document",
]
One way to leverage this is to implement denylist rules.
For example, you may want to ensure that if someone defines a Kubernetes ConfigMap, then they cannot use it to store sensitive information such as passwords, secret keys, and access tokens.
You can do that and expand what is defined as "sensitive information" over time by defining a group of sensitive tokens inside a denylist:
```
package rules
sensitive_denylist := [
    "pass",
    "secret",
    "key",
    "token",
]
check_sensitive(keys, denylist) {
    _ = keys[key]
    contains(key, denylist[_])
}
deny[msg] {
    input.kind == "ConfigMap"
    input.data = keys
    check_sensitive(keys, sensitive_denylist)
    msg := {
        "publicId": "CUSTOM-RULE-7",
        "title": "ConfigMap exposes sensitive data",
        "severity": "high",
        "msg": "input.data",
        "issue": "",
        "impact": "",
        "remediation": "",
        "references": [],
    }
}
```
Any key containing the substrings "pass", "secret", "key", and "token" can be considered sensitive and so should not be included in the ConfigMap.
