The integration profiles set up with the REST API will not be visible at the Group-level on the Snyk Web UI Integrations page.

Use the following API request template:

curl --location 'https://api.snyk.io/rest/groups/<SNYK_GROUP_ID>/cloud_events/group_registrations?version=2023-01-25~experimental' \
--header 'Content-Type: application/vnd.api+json' \
--header 'Authorization: token <SNYK_API_TOKEN>' \
--data '{
    "data": {
    "type": "group_registration",
    "attributes": {
            "type": "google-securitycommandcenter",
            "name": "Test Google SCC integration",
            "config": {
                "org_id": "<GCP_ORG_ID>",
                "finding_source_name": "<GCP_FINDING_SOURCE_NAME>"
            },
            "credentials": "<GCP_SERVICE_ACCOUNT_KEY>"
        }
    }
}'

Replace the following placeholders:

<SNYK_GROUP_ID> - the group ID for your Snyk Group
<SNYK_API_TOKEN> - the Snyk API token (see Prerequisites above)
<GCP_ORG_ID> - your Google Cloud organization ID. See the Google Cloud Getting your organization resource ID page for more details.
<GCP_FINDING_SOURCE_NAME> - the full relative resource name / Source ID for the finding source created in the previous step
<GCP_SERVICE_ACCOUNT_KEY> - the full JSON service account key (see Prerequisites above).


The JSON service account key must be string encoded, for example, double quotes must be escaped and new lines removed. One way to do this would be to use the javascript function JSON.stringify() in a local javascript environment.
