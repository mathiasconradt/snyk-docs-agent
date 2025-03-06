You cannot view the clientSecret after the App is created. If you have misplaced it, you can rotate your clientSecret and receive a new one.
Perform secret management requests for apps you have created by sending a POST request to the endpoint apps/creations/secrets:
https://api.snyk.io/rest/orgs//apps/creations//secrets?version=
The app_id path parameter is the id in the response to a GET request to the apps/creations endpoint.
For details, see the endpoint Manage client secret for the Snyk App.

For client credentials apps that you have installed, see the endpoint Manage client secret for non-interactive Snyk App installations.

You can perform three operations that are indicated by the body of your POST request:

create 
delete "}
replace 

Snyk recommends you adopt the following procedure when rotating your secrets:

Create a new secret using 
Update your services with the newly generated secret
Remove the old secret using "}
