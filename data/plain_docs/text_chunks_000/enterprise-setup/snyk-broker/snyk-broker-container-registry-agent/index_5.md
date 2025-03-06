You can pull the Container Registry Agent image from Docker Hub using the link provided in the prerequisites.
To configure the Container Registry Agent, the following environment variables are required:

SNYK_PORT - the local port at which the Container Registry Agent accepts connections (default value: 17500).
SNYK_MAX_IMAGE_SIZE_IN_BYTES - the maximum size of an image that Snyk is able to scan (default value: 2147483648).

Run the Container Registry Agent container with the relevant configuration:
docker run --restart=always \
       -p 8081:8081 \
       -e SNYK_PORT=8081 \
       snyk/container-registry-agent:latest
