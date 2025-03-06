These Snyk features for Git Repositories (SCM) integrations run scans automatically by default:

Daily recurring tests
An automatic scan, which runs if the dependencies change on your default branch
PR checks, which run when you create a pull request that changes those dependencies

If you have a Dockerfile in your source code repository, the default settings will detect and scan it, but Dockerfiles count as a Snyk Container scan, not a Snyk Open Source scan.
Terraform and Kubernetes configuration files scanned from source code repositories are counted as Snyk IaC scans.
For container scans from a registry or your Kubernetes cluster, Snyk counts the initial scan and subsequent recurring scans. By default, recurring scans run once a day.
