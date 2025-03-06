After your Git repository is connected (see See Git repository integrations (SCMs) for details), you have automated processes available to automatically check pull requests for vulnerabilities, automatically generate pull requests, and automatically generate dependency upgrade pull requests. Snyk recommends you disable these options initially.
The settings for each Snyk Project are inherited from the Snyk Organization integration settings. Follow these steps to ensure these settings are disabled: Default Snyk test for pull requests, Automatic fix pull requests, Automatic dependency upgrade pull requests, and Automatic updates to Dockerfile base images. You can go back and enable these settings when your teams are ready to implement these options.

Select the Integrations page from the left-hand navigation menu.
Select the settings cog icon for your Git repository integration.
In the Default Snyk test for pull requests section, ensure the following are disabled:
Open Source Security & Licenses (default checks when PRs are opened)
Automatic fix pull requests: both New vulnerabilities and Known vulnerabilities (backlog)
Automatically update Dockerfile base images
Automatic dependency upgrade pull requests


Snyk recommends defining standards for these options as well as notification defaults before you add more than a few Projects. When your teams are ready for a broader implementation, Snyk recommends defining standards for these options according to your security maturity. For more information, see Configure integrations.
