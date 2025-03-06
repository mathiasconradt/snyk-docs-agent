Log in to your account and navigate to the relevant Group and Organization that you want to manage.
If you  imported your repositories for testing before the infrastructure as code feature was enabled by your administrator, from the Add project screen, re-import that repository in order to detect the Terraform code:

Add project screen
Every time a repository is scanned, every Terraform file is imported as a separate Project, grouped together per repository, similar to the example shown.
If you re-imported the repository in order to import the Terraform files, then Snyk imports and re-tests the already imported application manifest files, displaying the test time as "now".
List of Terraform Projects

Click the link for the Project of interest to you to view the scan results and to help correct your Terraform code:

Terraform Project detail
