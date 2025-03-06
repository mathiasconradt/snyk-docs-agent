Before authenticating, be sure you have set your region properly. For details, see Regional hosting and data residency, which has the list of regional URLs.

Your Snyk API token is a personal token available under your user profile. The Snyk API token is associated with your Snyk Account and not with a specific Organization.
Free and Team plan and trial users have access only to this personal token under the user profile. The personal token can be used to authenticate with the Snyk CLI running on a local or a build machine and an IDE when you are setting a token manually. Use a personal token with caution if you are authenticating for CI/CD or with the API, which is available for Enterprise plan users only.
To obtain your personal Snyk API token:

Log in to Snyk and navigate to your personal account settings. 
In your General settings, under API Token, select click to show.
Highlight and copy your API key.

If you want a new API token, select Revoke & Regenerate, but be aware that this will make the previous API token invalid.
For information on when to use an API token and when to use a service account token, avialable to Enterprise plan users only, see Authentication for API.
