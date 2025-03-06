For each run triggered in the Terraform Cloud workspace, the result of Snyk Terraform plan scanning appears under the run tasks step, which triggers after the Plan stage finishes.
The scan results in either a passed or a failed status. If Snyk finds issues in your Terraform plan file, the scan results in a failure.
Click on the Details link of the run task results in Terraform Cloud to view further details in Snyk.
You can also find the results under the Projects tab in Snyk by searching for terraform-plan.json which will be under a Target named by /
You can also use the filter in the left pane to show only Terraform Cloud projects
A single project in Snyk (terraform-plan.json) is created for each workspace which uses the Snyk integration. Every project page shows the latest scanning results.
To see historical scan results, navigate into the History tab under the relevant project and choose the historic snapshot you wish to view.
