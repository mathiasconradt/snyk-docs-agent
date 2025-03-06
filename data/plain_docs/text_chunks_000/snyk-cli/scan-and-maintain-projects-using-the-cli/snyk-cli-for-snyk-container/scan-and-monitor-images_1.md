To scan an image, run the container test command. For example:
snyk container test debian
The command:

Downloads the image, if it is not already available locally in your Docker daemon.
Determines the software installed in the image.
Sends the bill of materials to the Snyk service.
Returns a list of the vulnerabilities in your image.

You can use Snyk to test any image you can pull from a remote registry or any image you have built locally and made available in your local Docker daemon:
snyk container test <repository>:<tag>
If you use a Dockerfile to build your image, you can specify this when running snyk container test:
snyk container test <repository>:<tag> --file=Dockerfile
Specifying a Dockerfile provides more context and allows Snyk to provide clear recommendations on how to fix discovered vulnerabilities.
Snyk currently detects application vulnerabilities in your image by default.
