To get the orgs from GitHub Enterprise: api/v3/organizations (if the fetchAllOrgs flag was set) or api/v3/user/orgs (if the fetchAllOrgs flag was not set)
To get the list of the repo/s that correlate with the fetched/provided orgs list: api/v3/orgs//repos
To get the commits for the fetched/provided repo/s list: api/v3/repos///commits
