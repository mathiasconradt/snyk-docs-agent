Follow these steps to make a simple call to the REST API using curl in the command line.

Log in to Snyk.
In your account, use the left navigation to find an Organization where you have Projects you can list.
Navigate to your Organization Settings, and on the General settings page, find your Organization ID and copy the value.
Navigate to your personal General Account Settings and copy your API Token. For instructions, see Authentication for API.
Use a curl command to make your request. Replace the  and API_TOKEN with your Organization ID and API Token, respectively. For the version parameter, Snyk advises using the current day's date. An example follows.


curl --request GET \
--url "https://api.snyk.io/rest/orgs//projects?version=2024-06-10" \
--header "Content-Type: application/vnd.api+json" \
--header "Authorization: token API_TOKEN"

The API URL to use when calling an API is different for different regions. For a complete list, see API URLs.
As an example, theSNYK-US-02region API URLs are the following:

API V1: https://api.us.snyk.io/v1/
REST API: https://api.us.snyk.io/rest/


Note that if you use the parameter target-reference, you must URL-encode it.
If you have any problems or questions, contact Snyk support.
