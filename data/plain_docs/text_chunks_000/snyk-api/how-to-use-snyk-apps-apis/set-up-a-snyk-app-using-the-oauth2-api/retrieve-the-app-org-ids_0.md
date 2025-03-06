Users may connect with a single Organization or a single Group. Most of the Snyk API endpoints require an orgid in the path, which is used for authorizing the action being performed. For more information see Integrating Apps with Snyk.
To retrieve the orgid that is used by your App, send a GET request to the orgs endpoint, List accessible organizations at the following URL:
https://api.snyk.io/rest/orgs?version=
Snyk recommends you store this value and associate it with the user's details.
