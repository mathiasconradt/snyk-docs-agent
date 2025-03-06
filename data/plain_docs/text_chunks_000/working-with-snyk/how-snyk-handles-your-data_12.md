Snyk AppRisk

Snyk Essentials and Snyk AppRisk provide visibility into data at the Snyk Group level and, therefore, cover the scope of all Snyk Organizations within a Snyk Group.
From Snyk Targets and Projects within associated Snyk Organizations, Snyk Essentials and Snyk AppRisk accesses and stores asset metadata to generate code repository assets, package (first-party) assets, and container image assets. Asset metadata includes the Git remote URL, languages represented in repositories, and commit history metadata (not the underlying source code).
From SCM integrations configured using the Integration Hub, Snyk Essentials and Snyk AppRisk access and store the following data:
Commit history metadata from the last 50 commits for repositories monitored, including profile information on the code committer, such as GitHub user IDs, display name, or email.
Metadata on the languages, for example, Python, HTML, used for a given code repository.
Repository “topics,” which are represented as asset tags.
From runtime data sources configured using the Snyk AppRisk Integration Hub (including observability, CNAPP, and so on), Snyk AppRisk can access and store the following data:
Kubernetes resources (including but not limited to deployments, pods, and so on) that are present across the various clusters.
Application entities used in runtime, and how they are executed (for example, loaded into memory) - including but not limited to services and packages.
Metadata on files in the OS itself.
Information on the runtime and cloud environment.
HTTP request metadata, for example, hostnames, paths, and so on, flowing through the cluster.
