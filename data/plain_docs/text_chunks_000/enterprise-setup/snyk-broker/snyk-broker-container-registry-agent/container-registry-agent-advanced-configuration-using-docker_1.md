The Container Registry Agent (CRA) runs an HTTP server by default. CRA can be configured to run an HTTPS server for local connections. This requires providing an SSL certificate and a private key to the Docker container at runtime.
For example, if your certificate files are found locally at ./private/container-registry-agent.crt and ./private/container-registry-agent.key, provide these files to the Docker container by mounting the folder and using the HTTPS_CERT and HTTPS_KEY environment variables:
docker run --restart=always \
       -p 8081:8081 \
       -e SNYK_PORT=8081 \
       -e HTTPS_CERT=/private/container-registry-agent.crt \
       -e HTTPS_KEY=/private/container-registry-agent.key \
       snyk/container-registry-agent:latest
