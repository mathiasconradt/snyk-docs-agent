Copy the contents of data.attributes.data from the API response, excluding the double quote at the very beginning and the very end of the value. You should end up with a long string starting with provider \"azuread\" (Terraform) or objectId=$(az ad app create (Bash).
Paste the string into a tool such as FreeFormatter.com to unescape the JSON.
Save the unescaped output as a new .tf file (Terraform) or .sh file (Bash).
