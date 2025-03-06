By default, the Container Registry Agent establishes HTTPS connections to the Container Registry and Broker Client. If your Container Registry or Broker Client is serving an internal certificate (signed by your own CA), you can provide the CA certificate to the Container Registry Agent. For example, if your CA certificate is at ./private/ca.cert.pem, provide it to the Docker container by mounting the folder and using the NODE_EXTRA_CA_CERTS environment variable:
docker run --restart=always \
       -p 8081:8081 \
       -e SNYK_PORT=8081 \
       -e NODE_EXTRA_CA_CERTS=/private/ca.cert.pem \
       snyk/container-registry-agent:latest
