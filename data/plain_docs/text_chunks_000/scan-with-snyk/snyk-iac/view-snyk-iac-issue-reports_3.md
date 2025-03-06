You can see the full list of issues by using the API endpoint Get list of latest issues.
To retrieve only your Infrastructure as Code issues, submit a body payload:
{
  "filters": {
    "orgs": ["my-public-org-id"],
    "types": [
      "configuration"
    ]
  }
}

You can obtain your public-org-id from the Snyk UI Settings page when you view your target Organization.

For the full list of parameters, see the documentation for the API endpoint Get list of latest issues.
