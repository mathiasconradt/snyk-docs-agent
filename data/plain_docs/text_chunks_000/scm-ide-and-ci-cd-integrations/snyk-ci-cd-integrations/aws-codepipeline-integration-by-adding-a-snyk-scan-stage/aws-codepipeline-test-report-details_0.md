The Snyk integration for AWS CodePipeline will be discontinued
\
Action Required
In order to safeguard the security of our services and our customers, Snyk has begun the deprecation of its integration with AWS CodePipeline. To minimize disruption, we recommend that you transition to using AWS CodeBuild and the Snyk CLI as an alternative which will support the same use case and functionality. 
Migration Timeline
Effective Oct 30th, 2024, you will no longer be able to add or modify the Snyk plug-in for new or existing pipelines. Existing pipelines will continue to work as-is for 6 months, though we recommend migrating to the new process as soon as possible. To avoid disrupting your CI/CD workflows, you must transition to the Snyk CLI before April 30, 2025. Please refer to the steps in this migration guide to use Snyk CLI with AWS CodeBuild.\
We are confident that AWS CodeBuild and the Snyk CLI will meet your requirements. 

Snyk analyzes the manifest file of the application and correlates the list of dependencies with the Snyk vulnerability database. Snyk provides detailed reports for your open source code. By analyzing the manifest file, Snyk builds a full dependency tree, accurately identifying both direct and transitive dependencies (transitive dependencies account for 78% of the vulnerabilities detected by Snyk). This enables Snyk to show exactly how a vulnerability was introduced into the application.


Reports are stored for 14 days before they expire. Subsequent pipeline runs update the report and reset the retention period.
