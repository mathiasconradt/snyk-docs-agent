Refer to the repositories for instructions on how to use the following additional Snyk Tools.

snyk-disallow: Get a viewer token for the Snyk Group to get a read|test-only token for CI or similar systems.
snyk-prevent-gh-commit-status: POST commit status of a PR the result of snyk-delta executed in the CI.
snyk-cr-monitor: Gather Docker repos to test, then iterate through results to run multiple jobs simultaneously.
backstage-plugin-snyk: Plugin to display security details from Snyk.
snyk-api-ts-client: Snyk API Typescript client.
snyk-transitive-ignore: Generate the Snyk ignore policy dynamically based on a provided list of packages.
snyk-user-sync-tool: Add, remove, and sync user memberships.
snyk-licenses-texts: Provides Organization-level licenses used, copyrights (until January 8, 2024), and dependencies data.
snyk-request-manager: Rate-controlled and retry-enabled request manager to interact with Snyk APIs.
snyk-repo-issue-tracker: A python script/module that allows for generating a changeset of issues between runs against the Snyk Project issues API.

snyk-repo-diff: Helps determine which repositories are not monitored by Snyk.
This works by retrieving a list of all Projects in a given Snyk Group, that is, all Projects in all Organizations belonging to the same Snyk Group, and associating them with a list of repositories found in a given GitHub Organization.
* snyk-issues-to-csv: A python script that uses the PySnyk module along with the Pandas modules to collect all issues from the report API and combine them into a single CSV for an entire Group.
* snyk-bulk: Recursively scan source repositories for open-source vulnerabilities with the Snyk CLI outside of a build environment.
* snyk-bulk-action-scripts: A collection of scripts to edit integration settings for every Organization in a Group in Snyk.
* snyk-deps-to-csv: Collect all dependencies from all Organizations in a Group and output to a CSV file.
* add-ignore-reason-to-csv-report: Add ignore reason and user data to CSV ignore report from the UI.
