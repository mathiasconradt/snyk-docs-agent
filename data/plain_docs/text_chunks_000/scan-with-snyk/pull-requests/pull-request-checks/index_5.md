The following diagram explains how Snyk Checks PRs in your development workflow.
Where Snyk checks for pull requests in the development workflow
PR checks proceed as follows:

A developer creates a pull request (PR) in an SCM integrated with Snyk.
A webhook is triggered from the SCM to Snyk
Snyk automatically scans the code changes in the PR for issues.
Snyk leaves security reviews and notes on the PR.
The developer can view the PR Checks results and fix identified issues before merging the code.
The PR Checks results appear as Passed or Failed directly in the SCM, preventing PRs from being merged with security issues.

For more information on working with PR Checks, see the following pages:

Configure PR Checks
Pull Request Experience
Analyze PR Checks results
Troubleshoot PR Checks
