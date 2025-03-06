Integrate Git or CI/CD integrations as identified in the previous phase.
Git repositories
For Git integration, Snyk suggests the following settings:
To disable gating initially, use the daily monitoring that is automatically configured when a Project is onboarded in Snyk, and disable the following PR/MR Checks in the configuration settings:

Automatic fixes Snyk can position
Automatic fix PRs
Automatic dependency upgrade PRs
Snyk vulnerability patches.
PR checks for
Pull Request status checks for Open Source security and licenses
Code analysis (Beta).
