Log in to your account and navigate to the relevant Group and Organization that you want to manage.
If you imported your repositories for testing before configuration file detection was enabled by your administrator, you must re-import that repository in order to import the Helm chart:

Every time a repository is scanned, Snyk creates a Project for each template in your Helm Chart, grouped together by repository.
If you re-imported the repository in order to import the configuration files, then Snyk imports and tests the configuration files and also re-tests the already imported application manifest files, displaying the test time as "now".

Click the Project link you are interested in to view the scan results and to correct your configuration files accordingly.\
  Projects that were created from external dependencies will also be scanned, and issues will be shown.

Helm Charts Project detail
