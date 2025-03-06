The most common tools to integrate Snyk into your SDLC to gain visibility are described here.
Git repository
Snyk can integrate with multiple Git repositories to help you track, monitor, and fix the issues and vulnerabilities in your code.
If you have on-premise Git repositories, you must configure and run Snyk Broker to enable the integration.
When importing a repository, Snyk will scan and monitor the default branch for vulnerabilities. 
Monitoring takes the form of

daily scanning of a specified branch, even when you are not working on it, 
Pull Request and Merge Checks

Source control scanning of your Git repositories is suitable for the majority of supported languages, but note that if you use a private package manager, such as Artifactory, this must be integrated with Snyk to scan your private packages.
You can import Projects through a Git repository integration manually through the browser, or you can use the API, either with the snyk-api-import tool to import repositories in bulk, or the endpoint  Import Targets to import specific repositories, which can be inserted into a pipeline.

For Snyk Enterprise customers, it is strongly suggested to use the GitHub Enterprise integration card on the Snyk Integrations page. You do not need to be a GitHub Enterprise customer to use this option; however, using this option allows a Personal Access Token (PAT) to be used, whereas OAuth, provided through the GitHub Integration card, provides an inconsistent experience in terms of access in the interface.

If you import your Project from a Git repository, you can also configure Snyk PR Checks and auto-fix PRs. These can prevent new security issues from entering your codebase by automatically scanning code changes in real-time whenever you submit a PR in your Git repository.
This allows scanning and visibility earlier in the software development lifecycle by checking all submitted PRs for security issues.

To disable gating initially, use the daily monitoring that is automatically configured when a Project is onboarded in Snyk, and disable PR/MR Checks in the configuration.

Automatic fixes Snyk can provide
Automatic fix PRs
Automatic dependency upgrade PRs
Snyk vulnerability patches
PR Checks are available for
Open Source security and licenses
Code analysis (Beta)


 Similarly, you may want to disable fix and upgrade PR features.
Snyk AppRisk integrations require additional setup and configuration using the Integration Hub option from the Snyk Web UI, Snyk AppRisk menu.
