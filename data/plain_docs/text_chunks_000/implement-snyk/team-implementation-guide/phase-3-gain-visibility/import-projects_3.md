For details, see Snyk CLI.
The CLI allows granular scanning of individual Projects. 

A command must be formulated for each type of test to perform (open source, code, infrastructure as code, and container).

To use the Snyk CLI:

Install CLI using one of the appropriate methods as part of the build script.
In the script, navigate to the Project folder.
Run the appropriate snyk test or snyk monitor commands and options for the type of scan you want to run. \
   \
   Where to implement testing in your scripts is generally flexible but most commonly prior to deployment. Use the monitor command alone for Snyk Open Source and Snyk Container to passively report. When using gating via the test command, the purpose is to break the build if issues are found that meet particular criteria like --severity-threshold or any number of options in the CLI or snyk-filter plugin. \
   \
   In general, Snyk Open source is typically run in test and/or monitor after the dependencies are installed on the build system.\
   \
   A typical command can look as follows:
Code: snyk code test --org=[org-id]
Open source: 
snyk test --all-projects --org=[org-id]
snyk monitor --all-projects --org=[org-id]\
   Replace [org-id] with the ID of your Organization.


For Container and Infrastructure as Code scans, see Container and Infrastructure as Code, as this will vary based on the type being scanned.
Review results either locally when running snyk test, or via the Snyk Web UI when using monitor or report.

For demonstrations of various pipeline integrations, see Snyk-Labs.
