Download and install jq.
When you are submitting the API request during template retrieval, append the following to the end of the command:\
   | jq -r .data.attributes.data > snyk_azure_permissions\
   This will place the properly-formatted template into the file snyk_azure_permissions in your current working directory.
Rename the file with a .tf (Terraform) or .sh (Bash) extension.
