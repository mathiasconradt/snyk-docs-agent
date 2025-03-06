Among the most common options used in a CI/CD integration are the following:
-- all-projects: Auto-detect all projects in working directory
-p: Prune dependency trees, removing duplicate sub-dependencies. Continues to find all vulnerabilities, but may not find all of the vulnerable paths.
--org=\: Specify the ORG_ID to run Snyk commands for a specific organization. This influences where new projects are created after running the monitor command, some features availability, and private tests limits. If you have multiple organizations, you can set a default from the CLI using:
$ snyk config set org=<ORG_ID>
Set a default to ensure all newly tested or monitored projects are tested under your default organization. If you need to override the default, use the --org=<ORG_ID> option.
The default<ORG_ID> is the current preferred organization in your Account settings.
