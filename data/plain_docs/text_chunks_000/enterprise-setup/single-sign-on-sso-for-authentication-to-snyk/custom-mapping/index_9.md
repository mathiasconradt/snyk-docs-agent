An example of a set of role assertions for a user follows:
{
    "roles": [
        "snyk:group:*:group_viewer",
        "snyk:org:development:org_admin",
        "snyk:org:test-org-N58YhztauHcaMiNfvi5fbL:custom:developer_readonly",
    ]
}


The system also supports comma-separated lists of roles instead of an array.
{
  "roles": "snyk:group:*:group_viewer, snyk:org:development:org_admin, 
snyk:org:test-org-N58YhztauHcaMiNfvi5fbL:custom:developer_readonly"
}

These assertions will assign the user:

The pre-defined Group-level role Group Viewer for all groups in the SSO. See pre-defined roles for the permission this grants
The pre-defined Organization-level role Organization Admin for the Organization with the name Development.
The custom Organization-level role Developer ReadOnly for the Organization with the name Test Org, which has the slug test-org-N58YhztauHcaMiNfvi5fbL.
