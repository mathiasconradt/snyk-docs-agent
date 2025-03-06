Snyk Projects are items that Snyk scans for issues, for example, a manifest file listing your open-source dependencies.
When you import a Project, Snyk scans that imported Project, and displays the results for you to review.
Importing a Project also does the following:

Sets Snyk to run a regular scan on that Project for issues. See Usage settings.
Initiates some automation, especially default Snyk tests on pull and merge requests, which help prevent vulnerabilities from being added to the Project. This automation fails builds according to your conditions and can be disabled or customized in your integration settings.
