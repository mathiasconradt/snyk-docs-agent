Download and install jq.
When you are submitting the API request to retrieve the template, append the following to the end of the command:

| jq -r .data.attributes.data > snyk_google_iac_template.tf
This will place the properly-formatted template into the file snyk_google_iac_template.tf in your current working directory.
