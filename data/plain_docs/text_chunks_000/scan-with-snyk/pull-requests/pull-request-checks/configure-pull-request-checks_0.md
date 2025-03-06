Prerequisites for automated PR Checks
To check for open-source and licensing issues and code security, ensure that you have established the following:

You have the Group Admin role so you have access to all integration settings. See Member roles.
You have set up a Git repository integration. For help, see the Snyk Learn course Source code manager configuration.
Import a Project to have a working Git repository.
For code security (Snyk Code), meet all of the above conditions and then contact your Snyk representative to enable the feature for you.


PR Checks rely on webhooks from the SCM. Integration scope must include the ability to create webhooks.
A PR Check is counted as a test within your Organization's test count, including automatic checks of new commits in an open pull request. See What counts as a test. The number of tests allowed is determined by the pricing plans.
