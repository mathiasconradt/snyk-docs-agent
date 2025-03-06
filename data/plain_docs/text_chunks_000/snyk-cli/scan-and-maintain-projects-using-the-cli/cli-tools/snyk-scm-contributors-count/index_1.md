The tool works in two modes: Scoping usage prior to onboarding and Snyk License Consumption.

Scoping usage prior to onboarding: For users who want to onboard to Snyk and would like to get an estimate of the developer count across their SCMs.\
  In this mode, the tool fetches all the information directly from the SCMs, using the credentials provided by the user.
Snyk License Consumption (valid only for Bitbucket and Azure): For users with an existing Snyk account, who want some clarity and details about their license consumption (number of contributors, names, email, and so on).\
  In this mode, the tool fetches the SCM-related projects monitored by Snyk and then matches those to the repos on the SCM and counts the contributors only for those repos/projects.


Note that currently the tool does not count emails that end with "noreply.github.com".
