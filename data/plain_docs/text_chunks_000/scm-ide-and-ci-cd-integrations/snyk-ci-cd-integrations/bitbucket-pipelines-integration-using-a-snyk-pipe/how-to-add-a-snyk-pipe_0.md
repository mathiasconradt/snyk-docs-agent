Follow these steps to add a Snyk pipe:

Add the Snyk pipe while creating your pipeline or while editing an existing pipeline. See the Bitbucket documentation for more information: pipelines and pipes. When adding the Snyk pipe, follow the guidelines in the remaining steps.
Use the Bitbucket pipeline editor to update the .yml file configuration, select the correct language, and use the Bitbucket Pipes build directory when adding the Snyk pipe.
Paste the Snyk pipe into the Bitbucket editor interface after all build steps. Build steps are commands such as these: npm install / composer install / bundle install / dotnet restore / docker build
Ensure you paste the pipe before a deployment step, such as npm publish or docker push.
Configure the mandatory variables SNYK_TOKEN and LANGUAGE.
(Optional) Choose whether to fail the pipeline on vulnerabilities found with DONT_BREAK_BUILD and SEVERITY_THRESHOLD if it is used, and consider enabling MONITOR . For more information, see Snyk pipe parameters and values.
After Snyk is included in your pipeline commands, it looks for the manifest files in that repository, for example,package.json, package-lock.json , and performs the scan.

Results appear in the Bitbucket Pipelines output interface, similar to the following:


If the build fails, even if MONITOR is set to True, Snyk does not continue to the monitor stage because no projects are deployed until the build succeeds. To enable monitoring on Snyk.io of projects with vulnerabilities, set DONT_BREAK_BUILD to True. You can use SEVERITY_THRESHOLD to tell the pipe the severity threshold for failing the pipe at the scanning stage. For more information see Snyk pipe parameters and values.
