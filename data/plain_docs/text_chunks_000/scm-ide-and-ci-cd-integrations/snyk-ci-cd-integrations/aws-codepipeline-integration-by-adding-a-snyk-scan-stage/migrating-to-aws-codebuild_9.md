The Snyk integration for CodePipeline only supports a limited set of Snyk CLI functionality and options. By using the Snyk CLI in CodeBuild, you have the ability to use any Snyk CLI features. However, if your goal is to replicate the behavior of the Snyk CodePipeline integration as closely as possible, you can follow these tips:

The snyk test command produces a non-zero exit code when vulnerabilities are found. Consider adding || true to the end of the command to circumvent this behavior.
The snyk-to-html tool can be used to produce an HTML report of scan results by running a command similar to snyk test --json | snyk-to-html -o snyk-results.html
Use the following CLI options to reproduce behaviors you had configured in the AWS CodePipeline integration:
--org=\ - Specify the \ to run Snyk commands tied to a specific Snyk Organization.
--severity-threshold=\ - Report only vulnerabilities at the specified level or higher.
--all-projects - Auto-detect all Projects in the working directory.
--project-name=\ - Specify a custom Snyk Project name to the snyk monitor command.
