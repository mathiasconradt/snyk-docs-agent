Top level
In this level of usage, the tool starts from the top of the SCM to get the Orgs/Groups, then goes down to the repo level to get all the repos, then counts the commits for the past 90 days.
To use this level, provide the credentials (and host/url where applicable), and the tool will get the contributors count for all your orgs/groups and all their repos, for example:
snyk-scm-contributors-count github --token TOKEN
