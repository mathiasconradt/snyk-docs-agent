By default, the Code Agent establishes HTTPS connections to the Git instance. If your Git instatnce is serving an internal certificate (signed by your own CA), you can provide the CA certificate to the Code Agent.
For example, if your CA certificate is at ./private/ca.cert.pem, provide it to the Docker container by mounting the folder and using the CA_CERT environment variable:
docker run --name code-agent \
-p 3000:3000 \
-e PORT=3000 -e SNYK_TOKEN=fa7fxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx --network mySnykBrokerNetwork \
-e CA_CERT=/private/ca.cert.pem \
-v /local/path/to/private:/private \
snyk/code-agent
