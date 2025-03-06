The Snyk API Project importer, snyk-api-import, is a script intended to help import Projects into Snyk using available Snyk APIs at a controlled pace to avoid rate limiting from GitHub, GitLab, Bitbucket, and other systems and to provide a stable import. The script kicks off import in batches, waits for completion, and then keeps going. Any failed requests are retried before they are considered a failure and logged.
If you need to adjust concurrency, you can stop the script, change the concurrency variable, and start again. The tool skips previous repositories (Targets) that have been requested for import.
To use snyk-api-import you must do the following in advance:

Set up your Snyk Organizations (Orgs) before running an import.
Configure your Snyk Organizations with some connection to an SCM (GitHub, GitLab, Bitbucket, other) as you will need the integrationId to generate the import files.
Use the Set notification settings API endpoint to disable notifications for emails and so on, to avoid receiving import notifications (recommended).
Use the Update (integration settings) endpoint to disable the fix PRs and PR checks until import is complete to avoid sending extra requests to SCMs (GitHub, GitLab, Bitbucket, and so on).
