In non-brokered GitHub integrations, operations that are triggered through the Snyk Web UI, for example, opening a Fix PR or re-testing a Project, are performed on behalf of the acting user. 
Therefore, a user who wants to perform this operation on GitHub through the Snyk UI must connect their GitHub account to Snyk with the required permission scope for the repositories where they want to perform these operations. See GitHub and GitHub Enterprise permissions requirements for details.
Operations that are not triggered through the Snyk Web UI, such as daily and weekly tests and automatic PRs (fix and upgrade), are performed on behalf of random Snyk Organization members who have connected their GitHub accounts to Snyk and have the required permission scope for the repository.
For public repositories that are non-brokered, some operations, such as creating the PR, may occasionally be performed by snyk-bot@snyk.io.

A Snyk Organization administrator can designate a specific GitHub account to use for opening fix and upgrade PRs.
Note that Snyk will continue to use a random Snyk Organization member's GitHub account to perform all the other operations. Therefore using this feature does not eliminate the need to connect users' GitHub accounts to Snyk.
