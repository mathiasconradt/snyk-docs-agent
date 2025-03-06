An SSO connection may only be associated with one Tenant, and all users with any memberships within a tenant must also have a Tenant Membership. 
Therefore, it may be easier to assign Tenant-level roles by using the wildcard syntax, since the SSO is only linked to the one Tenant.
If no Tenant-level role assertions are provided, but the user does have other valid roles assigned,  Snyk will automatically assign users the Tenant Member role.
