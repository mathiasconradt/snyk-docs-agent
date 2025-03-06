To call the API endpoint, use the following HTTP request:
bash
$ http \
  "https://api.snyk.io/rest/orgs//packages//issues" \
  "Authorization: token $API_TOKEN" \
  version==<snyk-api-version>
The purl must be URL-encoded.
An example using a valid url-encoded purl follows:
bash
$ http \
  "https://api.snyk.io/rest/orgs//packages/pkg%3Amaven%2fcom.fasterxml.woodstox%2fwoodstox-core%405.0.0/issues" \
  "Authorization: token $API_TOKEN" \
  version==2024-06-26
For operating system packages, a vendor must be specified in the namespace portion, and a distro qualifier must be specified. Supported vendors include: debian, alpine, rhel, ubuntu, amzn, centos, oracle, rocky, sles.
An example using a valid url-encoded operating system purl follows:
bash
$ http \
  "https://api.snyk.io/rest/orgs//packages/pkg%3Adeb%2Fdebian%2Fcurl%3Fdistro%3Dbullseye/issues" \
  "Authorization: token $API_TOKEN" \
  version==2024-06-26
The Snyk REST API supports pagination. This has a default page limit of 1000, with a default offset of 0. Current, next, and previous pages are returned as links in the response. The following parameters can be supplied as query parameters: offset, limit.
An example paginated request follows:
bash
$ http \
  "https://api.snyk.io/rest/orgs//packages/pkg%3Amaven%2fcom.fasterxml.woodstox%2fwoodstox-core%405.0.0/issues" \
  "Authorization: token $API_TOKEN" \
  version==2024-06-26 \
  limit==100 \
  offset==0
