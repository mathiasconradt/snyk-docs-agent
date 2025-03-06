snyk:group:*:group_admin Assigns the user the Group admin role for all groups associated with the SSO connection.
snyk:group::custom:sysadmin Assigns the user the custom Group-level role Sys Admin for all groups associated with the SSO connection.
Note that :: here indicates an empty string for the target, and so is treated as a wildcard in the preceding example.
Note that this Group-level custom role must be created manually before it can be assigned.
snyk:org:my-default-org:org_admin Assigns the user the Organization Admin Organization-level role for the Organization my-default-org.
snyk:tenant::tenant_admin Assigns the user the Tenant Admin Tenant-level role for the Tenant associated with the SSO connection.
