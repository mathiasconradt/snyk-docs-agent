Overview of Snyk Container integrations
Snyk Container provides integrations to monitor container security. These integrations support different workflows for Snyk users and customers.
The integrations you use depend on your requirements and workflow. You can start with one integration and move to others later or use a combination of integrations as your team grows.
For example, it is common to use the Snyk CLI to provide fast feedback to development teams when you build an image and then use Kubernetes integration to provide assurance for running images in production.
The main Container integrations are:

CLI: Use for local investigation or testing an image you have built. This integration enables you to get early feedback on your machine and use as a gatekeeping stage in CI. It also serves a tool in CD for Snyk to capture snapshots and identify newly discovered vuilnerabilities. For details, see Snyk CLI for container security.
SCM: Snyk can detect Dockerfiles directly from Git repositories and provide recommendations for updating the base image to a less vulnerable one. For details, see Scan your Dockerfile.
Container registries: Use to test a large number of images or if you cannot modify many CI pipelines.
Kubernetes: Monitor running workloads with additional context concerning how the workload has been configured to run. For details, see Overview of the Kubernetes integration.


For cloud-hosted container registries, Snyk does not import and scan images that are larger than 2GB in size. To scan images that exceed this size, use the Snyk CLI.
