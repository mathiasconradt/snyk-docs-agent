The Snyk CLI allows granular scanning of individual Projects. 

You must formulate a command for each type of test to perform: open source, code, infrastructure as code, or container tests.

Follow these steps to use the CLI:

Install the CLI using one of the appropriate methods as part of the build script.
In the script, navigate to the Project folder.
Run the appropriate snyk test or snyk monitor commands with the appropriate options for the type of scan being run. \
   Where to implement testing in your scripts is generally flexible, but most commonly, testing is done prior to deployment. Use the monitor command alone for Snyk Open Source and Snyk Container to report vulnerabilities passively. In using gating with the test command, the idea is to break the build if issues are found that meet particular criteria like --severity-threshold or any number of options in the CLI or snyk-filter plugin. \
   \
   In general, the test or monitor commands or both are typically run for open source after the dependencies are installed on the build system.\
   \
   A typical command might look like one of the following:
Code: snyk code test --org=[org-id]
Open source: 
snyk test --all-projects --org=[org-id]
snyk monitor --all-projects --org=[org-id]


Refer to the documentation for container and infrastructure as code scans for information about how to scan those types of Projects.
Review results either locally when running snyk test, or in the Web UI when using monitor or report functions.


Demonstrations of various pipeline integrations can be found on Snyk-Labs
