If you are using Repository path as your Docker access method, set the container registry hostname in the CR_BASE variable in this structure: <your artifactory host>/artifactory/api/docker/<artifactory-repo-name>
Note that the catalog endpoint /artifactory/api/docker/<artifactory-repository>/v2/_catalog is not required for importing a project in Artifactory; this is used for listing the image repositories.
See Configuring your JFrog Artifactory container registry integration for more details.
