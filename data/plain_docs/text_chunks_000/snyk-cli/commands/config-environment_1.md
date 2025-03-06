snyk config environment <ENVIRONMENT>
Description
The snyk config environment command is provided for your convenience to make changing the endpoint used in the CLI easier and safer.
The outcome is almost the same as snyk config set endpoint=<URL> but in addition, the snyk config environment command does the following:

Supports aliases for environments to avoid the use of full URLs
Performs basic checks to avoid ambiguous or unexpected configuration
Clears existing authentication and organization settings, which are expected to be environment-specific
