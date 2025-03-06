Registration of a new Snyk App is a performed via a simple POST request to Snyk's API. While we could configure the App we've been building throughout this tutorial to perform the request, we'll instead make the request directly using curl to avoid creating a function that can only be run a single time.
The body of the request requires the following details:

name: The name of the Snyk App
redirectUris: The accepted callback location(s) during end-user authentication
scopes: The account permissions the Snyk App will ask a user to grant

A note on scopes: Once registered, Snyk Apps scopes cannot currently be changed. The only recourse is deleting the Snyk App using the Delete App API endpoint and registering the app again as a new Snyk App.
At the time of this writing, Snyk Apps is still in beta. At the moment, there is only one available scope: apps:beta. This scope allows the App to test and monitor existing projects, as well as read information about Snyk organizations, existing projects, issues, and reports.
One of the limitations of the Snyk Apps beta is that a Snyk App may only be authorized by users who have administrator access to the Organization to which the Snyk App is registered.
With your API token and orgid in hand, perform the following command in your terminal, substituting the values as necessary. For this tutorial, use http://localhost:3000/callback for the redirectUris value.

You can avoid inputting your API Token and other secrets directly into your shell by adding them as export statements in a file and sourcing the file to set them as environment variables.

bash
curl --include \
     --request POST \
     --header "Content-Type: application/vnd.api+json" \
     --header "Authorization: token <API_TOKEN>" \
     --data-binary "{
       \"name\": \"My Awesome App\",
       \"redirectUris\": [ \"http://localhost:3000/callback\" ],
       \"scopes\": [ \"apps:beta\" ]
       }" \
     'https://api.snyk.io/rest/orgs/<ORG_ID>/apps?version='
The response from Snyk contains two important values needed to complete our Snyk App's integration: clientId and clientSecret. Store these values somewhere safe. This is the only time you will see your clientSecret from Snyk. As a warning, never share your clientSecret publicly. This is used to authenticate your App with Snyk.
Now that we've registered the app as a Snyk App, we can start adjusting our TypeScript project to allow users to authorize it.
