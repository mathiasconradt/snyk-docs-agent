Pull the Docker image as follows:
docker pull snyk/snyk-iac-rules
Run the SDK by using the following command:
docker run --rm -v $(pwd):/app snyk/snyk-iac-rules 
For example, to generate a custom rules template, you can run the following:
docker run --rm -v $(pwd):/app snyk/snyk-iac-rules template -r
