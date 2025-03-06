The following example shows how to assign roles to Snyk users under the mapping convention.

The customer is named ABC and has one Group called ABC.
The customer has three Organizations within Snyk: Application-SecurityScanner1, Partner-Plugins, and Application-Payments.
The customer has four teams: Business Development, Engineering, Security, and Product. Each has different needs:
The Business Development team needs access to the ABC group and only the Partner-Plugins Organization as Org Admin.
Engineering needs access to the ABC Group, the Application-SecurityScanner1 Organization as Org Admin, Partner-Plugins Organization as Org Admin, and Application-Payments as Org Collaborator.
Security needs access to the ABC group as Group Admin and all three organizations as Org Admin.
The Product team needs access to the ABC group and all three organizations as Org Collaborator,

For the Business Development Team, Snyk uses the snyk-- mapping:
{
    "roles": [
        "snyk-partner-plugins-admin"
    ]
}
For the Engineering Team, Snyk uses the snyk-- mapping:
{
    "roles": [
        "snyk-application-securityscanner1-admin",
        "snyk-partner-plugins-admin",
        "snyk-application-payments-collaborator"
    ]
}
For the Security Team, Snyk uses the snyk-groupadmin mapping:
{
    "roles": [
        "snyk-groupadmin"
    ]
}
For the Product Team, Snyk uses the snyk- mapping, where the value of groupID must be inserted;
{
    "roles": [
        "snyk-"
    ]
}
