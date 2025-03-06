There are no unique options for use when running Snyk for PHP.
SCM integrations and PHP
PHP Projects can be imported from any of the available Snyk SCM integrations. After Projects have been imported, Snyk analyzes your Projects based on their supported manifest files.
After you select a Project for import, Snyk builds the dependency tree based on these manifest files. Both of the following files are required:

composer.json
composer.lock

If the composer.lock file is not present in the repository, the import will not process the composer.json manifest.
By default, Snyk scans your production dependencies. Using the Snyk Web UI, you can configure whether or not to include your development dependencies (require_dev) in the scan for vulnerabilities.
To update language preferences:

Log in to your account and navigate to the relevant Group and Organization that you want to manage.
Select Settings, then Languages.
Select Edit settings for PHP and select Scan dev dependencies to set your PHP projects in the specific Organization to include both development and production dependencies.
Select Update settings.

These settings are applied to all newly imported Projects and to all existing Projects when they are re-tested.
