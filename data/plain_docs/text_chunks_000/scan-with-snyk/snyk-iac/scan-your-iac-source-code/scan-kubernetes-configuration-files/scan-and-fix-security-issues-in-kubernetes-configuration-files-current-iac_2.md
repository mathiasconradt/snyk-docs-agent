Log in to your account and navigate to the relevant Group and Organization that you want to manage.
If you imported your repositories for testing before cloud configuration file detection was enabled by your administrator, re-import that repository to import the relevant JSON or YAML configuration files.

Every time a repository is scanned, every supported manifest file and every supported configuration file is imported as a separate Project, grouped together per repository.
When you re-import the repository in order to import the cloud configuration files, Snyk imports and tests the configuration files and re-tests the already imported application manifest files, displaying the test time as "now".

Click the link for the Project of interest to you to view the scan results and to correct your configuration files accordingly:

Kubernetes Proejct detail
