Copy the contents of data.attributes.data from the API response, excluding the double quote at the very beginning and the very end of the value. You should end up with a long string starting with variable \"project_id\".
Paste the string into a tool such as FreeFormatter.com to unescape the JSON.
Save the unescaped Terraform output as a new .tf file.
