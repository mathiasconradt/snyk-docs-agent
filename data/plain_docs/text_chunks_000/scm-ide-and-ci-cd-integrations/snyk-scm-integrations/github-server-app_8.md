Before the GitHub Server App can be used the integration must be setup within Snyk. In order to setup a brokered integration for the GitHub Server App the API must be used. 
To setup the integration you will need the following:

The base API address for your Snyk environment 
For most users this is https://api.snyk.io 
A full list can be found here.
The Snyk organisation ID you want to setup the integration in.
A valid Snyk API token.

With the above information make the following API call, replacing the required information inside the {} with your data.
curl --location 'https:///v1/org//integrations' \
--header 'Content-Type: application/json; charset=utf-8' \
--header 'Authorization: token $' \
--data '{
    "type": "github-server-app",
    "broker": {
        "enabled": true
    }
}'

On success of the above command you will receive an id value; this is the integrationId of your new GitHub Server App integration in Snyk. Keep a note of this, as you will need it for the Universal Broker.

Visiting the integrations page in Snyk will show that the integration has been configured. 
A successful GitHub Server App integration
Upon finishing the setup and installation of your GitHub Server App, you will have all of the necessary credentials to setup a brokered connection. See the official documentation on Snyk's Universal Broker for details on how to setup a GitHub Server App connection with Broker.
