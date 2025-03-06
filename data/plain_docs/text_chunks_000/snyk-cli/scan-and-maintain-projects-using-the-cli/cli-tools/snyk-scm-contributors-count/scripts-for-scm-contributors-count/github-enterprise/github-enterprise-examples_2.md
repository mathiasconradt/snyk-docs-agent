Consider the following levels of usage and options:
Usage levels


To get commits for all repos in all your orgs in GitHub Enterprise, provide the GitHub Enterprise token:
snyk-scm-contributors-count github-enterprise --token TOKEN --url HOST_URL
*   To get commits for some orgs and their repos in GitHub Enterprise, provide the GitHub Enterprise token and the org names, separated by a comma:
snyk-scm-contributors-count github-enterprise --token TOKEN --url HOST_URL --orgs ORG_ONE,ORG_TWO,ORG_THREE
*   To get commits for only one repo in GitHub Enterprise, provide the GitHub Enterprise token, one org name, and one repo name:
snyk-scm-contributors-count github-enterprise --token TOKEN --url HOST_URL --orgs ORG --repo REPO
