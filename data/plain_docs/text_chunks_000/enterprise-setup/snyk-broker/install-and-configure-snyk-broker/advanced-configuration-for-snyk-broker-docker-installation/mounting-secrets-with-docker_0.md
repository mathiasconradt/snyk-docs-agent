Sometimes it is required to load sensitive configurations, the GitHub or Snyk token, from a file instead of from environment variables. Broker is using dotenv to load the config, so the process is relatively simple:

Create a file named .env and put your sensitive configuration there.
Mount this file, for example, using a Kubernetes secret). Mount the file to be somewhere like /broker.
Change the workdir of the docker image to be /broker/. An example of such file is located in your broker container at $HOME/.env.
