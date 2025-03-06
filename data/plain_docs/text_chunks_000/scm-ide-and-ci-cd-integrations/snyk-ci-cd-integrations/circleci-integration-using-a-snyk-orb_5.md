Create a Snyk account and retrieve the Snyk API token from your Account settings.
Import the relevant repo into CircleCI.
Go to Settings -> Security -> Orb security settings and make sure you allow opt-in to third party Orbs.
Make sure your configuration (config.yml) file follows version 2.1.
Add the required environment variables to CircleCI (including the Snyk API token as SNYK_TOKEN).
