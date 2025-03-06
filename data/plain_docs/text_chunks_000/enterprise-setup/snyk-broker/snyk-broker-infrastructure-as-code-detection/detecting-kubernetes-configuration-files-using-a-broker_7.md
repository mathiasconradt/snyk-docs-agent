Broker takes the path to the accept.json file, with the applicable rules added, in the ACCEPT environment variable. The following provides an example of passing that variable to the GitHub Broker.
docker run --restart=always \
  -p 8000:8000 \
  -e BROKER_TOKEN=secret-broker-token \
  -e GITHUB_TOKEN=secret-github-token \
  -e PORT=8000 \
  -e BROKER_CLIENT_URL=https://my.broker.client:8000 \
  -e ACCEPT=/private/accept.json \
  -v /local/path/to/private:/private \
  snyk/broker:github-com
Note that this gives Snyk the ability to query for any .yaml, .yml or .json files. If you would prefer to be stricter, you can alter the paths in the preceding examples to be more restrictive for certain projects or file layouts.
