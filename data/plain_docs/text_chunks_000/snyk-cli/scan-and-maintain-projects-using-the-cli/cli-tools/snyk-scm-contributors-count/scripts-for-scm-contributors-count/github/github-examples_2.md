Consider the following levels of usage and options:
Usage levels


To get commits for all repos in all my orgs in GitHub, provide the GitHub token:
snyk-scm-contributors-count github --token TOKEN
*   To get commits for some Orgs and their repos in GitHub:, provide the GitHub token and the org names, separated by a comma:
snyk-scm-contributors-count github --token TOKEN --orgs ORG_ONE,ORG_TWO,ORG_THREE
*   To get commits for only one repo in GitHub, provide the GitHub token, one org name ,and one repo name:
snyk-scm-contributors-count github --token TOKEN --orgs ORG --repo REPO
