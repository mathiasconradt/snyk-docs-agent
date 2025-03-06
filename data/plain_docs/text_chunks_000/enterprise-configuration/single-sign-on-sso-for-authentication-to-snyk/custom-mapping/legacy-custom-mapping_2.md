To assign users with Group Admin role, use the following format:
{
    "roles": [
        "snyk-groupadmin"
    ]
}
To assign users with Group Viewer roles, use the following format:
{
    "roles": [
        "snyk-groupviewer"
    ]
}
To assign users with Org Collaborator roles, use the following format:
{
    "roles": [
        "snyk-"
    ]
}
To assign users as Org Admin or Org Collaborator, use the following format for the roles array. You can assign different roles on a per-org basis. The following example assigns a user as Org Admin in the orgslug Org but a Collaborator in the orgslug2 Org.
{
    "roles": [
        "snyk--admin",
        "snyk--collaborator"
    ]
}
To assign users a custom role, use the following format for the roles array. You can assign different roles on a per-Org basis and can use a combination of standard and custom roles for different Orgs.
{
    "roles": [
        "snyk--admin",
        "snyk--collaborator",
        "snyk--developer_readonly"
    ]
}

The system also supports comma-separated lists of roles instead of an array.
{
  "roles": "snyk--admin,snyk--collaborator"
}
