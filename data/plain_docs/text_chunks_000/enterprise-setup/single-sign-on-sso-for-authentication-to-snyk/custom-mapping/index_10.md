Custom mapping introduces wildcards, which allow one assertion to assign a user the same role in all Organizations or Groups.
Assertions using wildcards take a lower priority than assertions with a specific target. This means that it is possible, for example, to assign a user a default role for all Organizations, and specific roles in others:
roles: [
        "snyk:org:*:custom:developer_readonly",
        "snyk:org:development:org_admin",
    ]
These role assertions will:

Grant the user the pre-defined Organization-level role Organization Admin in the Development Organization.
Grant the user the custom Organization-level role Developer ReadOnly on all other organizations within the SSO connection.
Grant the user the pre-defined Group-level role Group Member on all groups in the SSO connection. For more details, see the note that follows.


Any user that is granted a role in an Organization within the SSO without an explicit Group-level role in the role assertion, will also be implicitly assigned the Group Member Group-level role for that Group. This is the pre-defined Group-level role with the fewest permissions and ensures that the user becomes a member of the Group.
