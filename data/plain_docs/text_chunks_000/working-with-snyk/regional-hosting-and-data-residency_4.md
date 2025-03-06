After you select a region, the data in that region cannot be migrated to another region. Moving to a new region requires a complete re-onboarding.

During the initial onboarding of your system, you can work with your account team to select a multi-tenant hosting region. For single-tenant availability (Snyk Private Cloud), reach out to your account team in advance of onboarding. When using Snyk features, you will use specific URLs that differ from the SNYK-US-01 URL. See Regional URLs for the list of URLs.
You must configure your environment to set your region before you authenticate. This does not apply when you are using the SNYK-US-01 URL. For details, see the snyk config environment CLI help.
Snyk offers data residency for the following regions:
|                 Region                 |           URL          |
| :------------------------------------: | :--------------------: |
|             SNYK-US-01 (US)            |   https://app.snyk.io  |
|             SNYK-US-02 (US)            | https://app.us.snyk.io |
|     SNYK-EU-01 (Germany, Frankfurt)    | https://app.eu.snyk.io |
|         SNYK-AU-01 (Australia)         | https://app.au.snyk.io |
| SNYK-GOV-01 (Snyk for Government (US)) | https://app.snykgov.io |
Single-tenant deployments may support more regions than the ones listed here, subject to validation of architectural service supportability by Snyk engineering.

Snyk Essentials and Snyk AppRisk work across all regions. There is no need to set your region and use a specific URL.
