Log in to the account and navigate to the relevant Group and Organization.
If you  imported your repositories for testing before the infrastructure as code feature was enabled by your administrator, from the Add project screen, re-import that repository in order to detect the CloudFormation code:

Add project screen
Every time a repository is scanned, every CloudFormation file is imported as a separate Project, grouped together per repository, similar to the example shown.
If you re-imported the repository in order to import the CloudFormation files, then Snyk imports and re-tests the already imported application manifest files, displaying the test time as "now".
List of CloudFormation Projects

Click a Project link to view the scan results and details for the CloudFormation code:

CloudFormation Project detail
