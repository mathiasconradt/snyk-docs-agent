In this level of usage, the tool starts from the Orgs/Groups that the user provides, then goes down to the repo level to get all the repos, then count the commits for the past 90 days.
To use this level, provide the credentials and a comma-separated list of groups or orgs for which you'd like to fetch the repos and their contributors count, for example:
snyk-scm-contributors-count gitlab --token TOKEN --groups GROUP1,GROUP2
