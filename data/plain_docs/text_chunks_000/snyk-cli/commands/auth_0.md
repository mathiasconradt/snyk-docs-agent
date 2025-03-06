Usage
snyk auth [<API_TOKEN>] [<OPTIONS>]
Description
The snyk auth command authenticates your machine to associate the Snyk CLI with your Snyk account.
Running $ snyk auth opens a browser window with prompts to log in to your Snyk account and authenticate. No repository permissions are needed at this stage, only your email address.
When you have authenticated, you can start using the CLI; see Getting started with the CLI
Beginning with version 1.1293, the Snyk CLI uses OAuth when authenticating through the browser.
OAuth provides improved security by issuing shorter-lived expiring authorizations with the convenience of automatic refresh.
Earlier versions of the Snyk CLI (< 1.1293) obtained a non-expiring API token through a legacy browser interaction.
The Snyk API token can still be used as a fallback option. You must explicitly add an option to enable it as follows: snyk auth --auth-type=token.
