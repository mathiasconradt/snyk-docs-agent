Snyk can help if the following circumstances exist:

You are running your build tooling, such as Jenkins, directly on a host that has Docker natively installed.
Your pipeline tasks run inside containers that have the Docker socket[/var/run/docker.sock] bind-mounted to the host.
You are running a Docker-inside-Docker setup.

Snyk can provide help as follows:

When you run snyk container test $IMAGE_NAME, Snyk looks for that image in your local daemon storage, and if the image does not exist, use the equivalent of a docker pull to download the image from your upstream registry.
For registry authentication, Snyk uses the credentials you already configured with something like docker login.
You can specify --file=Dockerfile on the command line to link the image vulnerability results with the Dockerfile that built the image, to receive inline fix advice and alternate base image suggestions.
