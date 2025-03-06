Snyk CLI can also be run from a Docker image. Snyk offers multiple Docker images under snyk/snyk on Docker Hub. See snyk/snyk-images on GitHub for details.
These images wrap the Snyk CLI and depending on the Tag come with relevant tooling for different projects. An example follows for scanning a Gradle project with snyk/snyk:
bash
docker run -it \
    -e "SNYK_TOKEN=<TOKEN>" \
    -v "<PROJECT_DIRECTORY>:/project" \
    -v "/home/user/.gradle:/home/node/.gradle" \
  snyk/snyk:gradle:6.4 test --org=my-org-name
This is an example for scanning a Maven project with snyk/snyk:
docker run --rm \
-e SNYK_TOKEN=<YOUR_SNYK_TOKEN> \
-v <PROJECT_DIRECTORY>:/app \
-v <PROJECT_DIRECTORY>/settings.xml:/root/.m2/settings.xml \
snyk/snyk:maven snyk monitor \
--all-projects=true \
--maven-aggregate-project
\
