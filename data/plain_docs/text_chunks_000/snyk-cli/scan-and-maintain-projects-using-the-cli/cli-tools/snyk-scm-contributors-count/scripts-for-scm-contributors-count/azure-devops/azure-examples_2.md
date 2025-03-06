Consider the following levels of usage and options:
Usage levels


To get commits for all projects and their repos under my Org in Azure , only provide the Azure token and Azure Org:
snyk-scm-contributors-count azure-devops --token AZURE-TOKEN --org AZURE-ORG
*   To get commits for some projects and their repos under my Org in Azure , provide the Azure token, Azure Org and the project key/s separated by a comma:
snyk-scm-contributors-count azure-devops --token AZURE-TOKEN --org AZURE-ORG --projectKeys Key1,Key2...
*   To get commits for a specific repo under my Org in Azure , provide the Azure token, Azure Org, a project key and a repo name:
snyk-scm-contributors-count azure-devops --token AZURE-TOKEN --org AZURE-ORG --projectKeys Key1 --repo Repo1
