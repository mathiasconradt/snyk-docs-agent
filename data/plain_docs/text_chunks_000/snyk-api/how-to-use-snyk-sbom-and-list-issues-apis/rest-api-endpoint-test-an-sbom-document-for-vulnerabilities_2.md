Testing your SBOM can be a long-running operation. Instead of waiting to respond until the test results are ready, Snyk returns a job_id after your initial request to send the SBOM. Then Snyk processes the request asynchronously.
Follow these steps to test an SBOM:

Log in to the Snyk Web UI and retrieve your Organization ID (UUID format), Project ID (UUID), and API key.\
   If you need help in finding these values, see Organization general settings, View and edit Project settings, and Authentication for API.
Use any HTTP client, for example, curl or Postman, to make a request to the endpoint Create an SBOM test run.


The SBOM document is included as part of the request body as a JSON object. This request creates a test run for your SBOM document.


bash
curl --request POST \
    -H "Authorization: token <SNYK_TOKEN>" \
    -H "Content-Type: application/vnd.api+json" \
    --data-binary '@request_body.json' \
    'https://api.snyk.io/rest/orgs/<ORG_ID>/sbom_tests?version=2023-089-03~beta'


json
{
    "data": {
        "type": "sbom_test",
        "attributes":{ 
            "sbom": {
            <SBOM_CONTENTS>
            }
        }
    }
}


From the response, get the job_id, which is used in the next steps.\
   This is a unique identifier for the test run being performed on your SBOM document.


json
{
    "data": {
        "id": "<JOB_ID>",
        "type": "sbom_tests"
    },
    "jsonapi": {
        "version": "1.0"
    },
    "links": {
        "self": "/rest/orgs/<ORG_ID>/sbom_tests?version=2023-08-31~beta",
        "related": "/rest/orgs/<ORG_ID>/sbom_tests/<JOB_ID>?version=2023-08-31~beta"
    }
}
