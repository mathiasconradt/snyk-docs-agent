The .snyk policy file can be used to exclude resources from being considered IaC drift by snyk iac describe. See the .snyk policy file doc for general information.
If you need to exclude only a set of resources, use .snyk. If you have more complex requirements, consider using filter rules. For more information see Filter rules.
Create the .snyk file in the directory where you launch the snyk iac describe command, typically the root of your IaC repo.
Each line must be structured as follows:

resource_type.resource_id, where resource_id is a wildcard to exclude all resources of a given type
resource_type.resource_id.path.to.field_name, where resource_id is a wildcard to ignore a drift on a given field for a given type and path, can also contain wildcards.
