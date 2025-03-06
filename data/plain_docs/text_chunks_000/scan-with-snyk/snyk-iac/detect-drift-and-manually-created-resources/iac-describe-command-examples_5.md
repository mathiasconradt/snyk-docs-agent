You can obtain your workspace ID from the General Settings of the Terraform Enterprise workspace.
Remember to provide your Terraform Enterprise API token.
Example:
snyk iac describe --from="tfstate+tfcloud://$WORKSPACE_ID" --tfc-token="$TFC_TOKEN" --tfc-endpoint="https://tfe.example.com/api/v2"
