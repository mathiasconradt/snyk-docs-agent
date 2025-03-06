Create and manage a custom PR template using the API
You can create a custom PR template using the API endpoint Create or update pull request template for Group. Send an API request that contains a JSON payload with the custom properties. This request configures a Group-level pull request template that will be used on any Organization or Project within that Group. The pull request template created using the Snyk API can be updated at any time and all Projects in the Group are automatically updated with the latest changes.
API configuration of PR templates is available only at the Group level.
When a custom template is uploaded using an API request, all Snyk PRs in that Group adopt this format, effectively switching off the default Snyk template for the customizable properties. Strings are the only acceptable values; lists and numbers are not allowed.
If any customizable properties are missing from your custom template, Snyk reverts to the default values for these properties when opening a pull request. 
The following properties are customizable using the API:

title - customize the PR title
commit_message - customize the PR commit message
description - customize the PR description 

You cannot customize the branch name for your PRs. The branch name of your PRs will use the Snyk default value. 
You can retrieve the custom PR template for your Group using the endpoint Get pull request template for Group. This is useful if you want to consider changing your template and in troubleshooting.
To delete the template, use the endpoint Delete pull request template for group.
