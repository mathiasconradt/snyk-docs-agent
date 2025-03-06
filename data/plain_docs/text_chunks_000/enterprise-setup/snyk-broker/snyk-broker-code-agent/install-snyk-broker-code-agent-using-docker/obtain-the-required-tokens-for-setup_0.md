To set up the Code Agent wtih the Broker client, you need the following tokens:

Snyk API token - this token is required for the Code Agent setup. It is used in the -e SNYK_TOKEN parameter to authenticate the Code Agent component with your Snyk Account. See Obtain and use your Snyk API token and Set up the Code Agent.
Broker token - this token is required for the Broker client setup. It is used in the -e BROKER_TOKEN parameter. The Broker token is associated with a specific Organization by default and with a specific integrated SCM, and enables Snyk Broker deployment for this Organization and SCM. For each SCM, a different Broker token is required. For details, see Obtain your Broker token for Snyk Broker - Code Agent.
Integrated SCM token - this token is required for the Broker Client setup. It is used in the -e <SCM>_TOKEN parameter, or example, -e GITHUB_TOKEN=xxx…, to enable access to the SCM with certain permissions needed for the operation of the Broker and Snyk Code. See Obtain your SCM token.

After you have obtained the required tokens, save them in a safe and accessible place. When you start setting up the Code Agent and the Client Broker components, you will need to use these tokens.
