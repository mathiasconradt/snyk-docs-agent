The Snyk integration for AWS CodePipeline will be discontinued
\
Action Required
In order to safeguard the security of our services and our customers, Snyk has begun the deprecation of its integration with AWS CodePipeline. To minimize disruption, we recommend that you transition to using AWS CodeBuild and the Snyk CLI as an alternative which will support the same use case and functionality. 
Migration Timeline
Effective Oct 30th, 2024, you will no longer be able to add or modify the Snyk plug-in for new or existing pipelines. Existing pipelines will continue to work as-is for 6 months, though we recommend migrating to the new process as soon as possible. To avoid disrupting your CI/CD workflows, you must transition to the Snyk CLI before April 30, 2025. Please refer to the steps in the below migration guide to use Snyk CLI with AWS CodeBuild.

This guide outlines the steps for migrating your Snyk Open Source security scanning workflow from the Snyk and AWS CodePipeline integration to AWS CodeBuild. By using the Snyk CLI and the built-in capabilities of CodeBuild, you can achieve a more streamlined and configurable solution for running Snyk software composition analysis (SCA) scans in your CI/CD pipeline.
