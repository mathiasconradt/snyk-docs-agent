The following table details the required permission scopes in Bitbucket Cloud and Bitbucket Data Center/Server:
| Action and purpose                                                                                                                                      |                                                                       App password requirements                                                                      | Bitbucket permissions |
| ------------------------------------------------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------: | :-------------------: |
| Daily / weekly tests:Read manifest files in private repos.                                                                  |                                                                       Repositories: read                                                                       |       ≥ write       |
| Manual fix pull requests (triggered by the user):Create fix PRs in repos.                                                   |                      Repositories: read, writePull Requests: read, write                      |                       |
| Automatic fix and upgrade pull requests:Create fix/upgrade PRs in repos.                                                    |                      Repositories: read, writePull requests: read, write                      |       ≥ write       |
| Snyk tests on pull requests:Send PR status checks when a new PR is created or a PR is updated.                              |                      Repositories: read, writePull requests: read, write                      |       ≥ write       |
| Snyk tests on pull requests (initial configuration):Add SCM webhooks to imported repos.                                     |                                                                      Webhooks: read, write                                                                     |        admin        |
| Importing new projects to Snyk:Lists available repos in the Bitbucket instance in the Add Projects screen. | Account: readWorkspace membership: readProjects: read |                       |
Snyk uses SCM webhooks in Bitbucket to:

Track the state of pull requests when PRs are created, updated triggered, merged, and so on.
Send push events to trigger PR checks.
