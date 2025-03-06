When the test is complete, you can view the results for the tested SBOM.

When the status of the test returned is finished, make a request to the endpoint Gets an SBOM test run result.
View the information returned, which includes summary-level information about the SBOM that was tested and the detailed results.

bash
curl --get \
    -H "Authorization: token <SNYK_TOKEN>" \
    'https://api.snyk.io/rest/orgs/<ORG_ID>/sbom_tests/<TEST_ID>/results?version=2023-08-31~beta'
