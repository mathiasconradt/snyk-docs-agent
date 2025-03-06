Snyk uses cloud products from Amazon Web Services (AWS) and Google Cloud Platform (GCP) to process and store the vulnerability source data in a cache. Such data is cached according to the shortest possible duration afforded by the cloud service provider's storage lifecycle policy, which is subject to change by these cloud service providers and set out approximately in the periods below:

For AWS tenants - EU/AU/Private Tenant: 24 to 48 hours under the S3 policy
For GCP tenants - US (Default): 24 hours under the Google Cloud Storage Policy
