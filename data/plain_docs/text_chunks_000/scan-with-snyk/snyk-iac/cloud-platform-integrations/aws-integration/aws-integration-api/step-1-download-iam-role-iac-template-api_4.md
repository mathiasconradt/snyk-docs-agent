Download and install jq.

When you are submitting the API request to retrieve the template, append the following to the end of the command:
| jq -r .data.attributes.data > snyk_iac_template
This will place the properly-formatted template into the file snyk_iac_template in your current working directory.
3. Rename the file with a .tf extension (Terraform) or .yaml (CloudFormation).
