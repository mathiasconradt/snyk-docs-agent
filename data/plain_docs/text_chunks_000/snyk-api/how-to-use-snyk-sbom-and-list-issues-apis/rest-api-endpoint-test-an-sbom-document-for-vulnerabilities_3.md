You can check the status of the test at any time after the initial request.

Using the job_id returned from the initial request to the endpoint Create an SBOM test run, make a request to the endpoint Gets an SBOM test run status.
A successful request to this endpoint returns the status of your test, which can either be processing or finished. If the call is not successful, an error will be returned.

bash
  curl --get \
      -H "Authorization: token <SNYK_TOKEN>" \
      'https://api.snyk.io/rest/orgs/<ORG_ID>/sbom_tests/<TEST_ID>?version=2024-09-03~beta'
