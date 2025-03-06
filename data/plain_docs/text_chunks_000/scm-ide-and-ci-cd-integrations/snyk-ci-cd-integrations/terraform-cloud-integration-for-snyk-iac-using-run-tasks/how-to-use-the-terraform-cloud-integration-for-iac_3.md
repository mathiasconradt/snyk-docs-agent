Snyk receives an event from Terraform Cloud for each plan stage finished within the latest run in Terraform Cloud.
The only way to trigger a scan is through Terraform Cloud by triggering a new run.
You cannot trigger a re-scan of the Terraform plan file through the Snyk Web UI.
If you customize the Snyk integration (for example, change severity threshold or customize policy severities), you must trigger a new run in Terraform Cloud for the changes to take effect in Snyk.
