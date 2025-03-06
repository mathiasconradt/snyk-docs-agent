Feature availability\
The Snyk API is available only with Enterprise plans. For more information, seeplans and pricing.

The Dep Graph API requires additional permissions. Contact Snyk Support to request access.
To test and monitor dependencies managed by Bazel, it is recommended that you use the Snyk Dep Graph API endpoints Test Dep Graph and Monitor Dep Graph. The monitor capability allows customers to submit a tree for Snyk to monitor for vulnerabilities. While you can use Bazel for many languages including C++, the Dep Graph endpoints do not support C++.
Follow these basic steps:

For each type of dependency, for example, Maven, Cocoapods, create a Dep Graph JSON object listing all the dependency packages and versions. See Example of Snyk for Baszel.

As part of a Bazel test rule, send the Dep Graph JSON object as a POST request to the endpointTest Dep Graph, along with your auth token. An example curl request follows:
curl -X POST 'https://api.snyk.io/v1/test/dep-graph' \
  -H 'Authorization: token }' \
  -H 'Content-Type: application/json; charset=utf-8' \
  -d @dep-graph.json
3. Check the API response for pass/fail status and any resulting vulnerabilities.
