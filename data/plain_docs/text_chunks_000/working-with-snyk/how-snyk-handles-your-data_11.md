Snyk Cloud scans cloud platform APIs to gather information on configured infrastructure deployed in AWS Accounts and Google Cloud Subscriptions.
To perform scans, Snyk relies on the principle of least privilege, leveraging different authentication mechanisms that are supported by each Cloud platform.
For Amazon Web Services (AWS), a read-only AWS IAM role must be provisioned in your AWS Account(s) to provide secure access to required AWS APIs.
For Google Cloud, a read-only Google Cloud Service Account must be provisioned to enable secure access to required Google Cloud APIs.
During scans, Snyk gathers and stores a resource configuration state to perform analysis, and stores the results of that analysis, including the details of misconfigurations that result in issues.
Snyk Cloud retains resource configuration states found in scans to provide context for Issues and resources but does not store secrets or sensitive values.
