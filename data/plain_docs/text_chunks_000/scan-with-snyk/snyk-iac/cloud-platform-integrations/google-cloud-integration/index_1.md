To add a Google Cloud integration, you need the following:

A Snyk Enterprise plan
A new Snyk Organization, with appropriate feature flags assigned by your Snyk contact
A Snyk Group Administrator or Organization Administrator role
Access to a Google Cloud project and associated credentials with permissions to create a read-only Google service account
Access to the Terraform CLI, configured with your Google credentials, to create the Google service account for Snyk
API only: An Organization-level service account with an Org Admin role to use the Snyk API
API only: An API client such as curl, HTTPie, or Postman
API only (optional): jq, to unescape JSON containing the service account Terraform template
