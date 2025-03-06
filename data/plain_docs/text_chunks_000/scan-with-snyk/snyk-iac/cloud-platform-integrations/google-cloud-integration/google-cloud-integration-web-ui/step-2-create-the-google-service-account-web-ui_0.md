Recap\
You have downloaded the Terraform template declaring the Google service account for Snyk. Now you need to provision the infrastructure.

The process to create the Google service account is the same whether you are using the Snyk Web UI or Snyk API to onboard your Google Project.
To scan a Google Cloud Project, Snyk takes the permissions of a tightly-scoped Google service account that allows Snyk to scan the configuration of your Project resources.
The service account you create is granted the following read-only Identity and Access Management (IAM) roles:

Security Reviewer
Viewer

Snyk Cloud's service account is granted the Service Account Token Creator IAM role to enable it to generate short-lived credentials for your service account.
Additionally, Snyk has a mechanism in place to lock a service account to the Organization that onboards it. This is a security feature to ensure that nobody can guess a service account name and onboard it into a separate Organization to see those resources.
