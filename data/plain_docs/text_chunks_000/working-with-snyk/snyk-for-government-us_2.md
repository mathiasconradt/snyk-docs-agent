API keys are not available.
This means that attempts to create Service Accounts either through the UI or using the API with an auth_type of api_key are not accepted. You must ensure that the OAuth protocol is used instead for all scenarios where API keys would typically be used. See Service accounts using OAuth 2.0 for details. If you need help, contact Snyk Support.
In addition, the CLI must be used in OAuth mode, not with token-driven authentication.
