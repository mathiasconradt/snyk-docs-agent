The following environment variables are needed to customize the Broker client for Nexus 2:
BROKER_TOKEN - the Snyk Broker token, obtained from your Nexus integration settings (Integrations > Nexus).
BASE_NEXUS_URL- the URL of your Nexus 2 deployment.\
Example:\
BASE_NEXUS_URL=https://[username_or_token:password_or_token]@acme.com\
Must not end with a forward slash.\
The following fields are optional:\
Auth: Omit if no auth required.\
Can be either plain text or a two-part token (Nexus Pro).\
URL encode username, password, and tokens to avoid errors that may prevent authentication.\
Minimal example: https://acme.com\
Complex example: https://alice:mypassword@acme.com: 8000
NEXUS_URL: Used as an override if your repositories do not live under /nexus/content\
The URL that points to the base of your repositories within Nexus. By default, the broker assumes BASE_NEXUS_URL/nexus/content/ as the value.
RES_BODY_URL_SUB\
The URL of the Nexus instance, including https:// and /nexus/content without basic auth credentials. Required for npm/Yarn integrations only. Must not end with a forward slash.
Examples:\
https://acme.com/nexus/content/groups\
https://acme.com/nexus/content/repositories
