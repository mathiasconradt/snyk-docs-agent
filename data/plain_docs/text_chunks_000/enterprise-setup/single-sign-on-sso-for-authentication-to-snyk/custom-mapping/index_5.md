Role assertions should be provided to Snyk in the following format:
snyk:::
Where:

snyk is a fixed prefix for role mapping. Required.
scope can be one of org, group, or tenant. Required; if a role mapping does not contain a valid scope, it will be ignored.
target can be a slug of an org, group, or tenant where the role will be granted. See slugs for more information.
Optional; may be an asterisk * or empty string ::to apply as a wildcard for all resources within the defined scope that are associated with the SSO connection.
Optional; an asterisk ( *) or an empty string can be used to apply to all resources that are associated with the SSO connection.
role is the normalized name of the required role. Required; if no role is present, the role mapping is ignored. See Role normalized name to find this information.
If the role is a custom role, that is, a role created in the Group Member Roles admin panel that can be of either Org or Group type,  then it must have a custom: prefix. See the example role assertions.
Built-in roles do not have the custom: prefix, so values like org_admin, org_collaborator, group_viewer will refer to the Snyk pre-defined roles, which are shown with a padlock symbol in the Member Roles page.


Users must only have one role mapped per Organization, Group or Tenant. Mapping multiple roles except when using wildcards is not supported and can lead to unexpected behavior.
