Flow 

Fetch the monitored projects from Snyk (if the skipSnykMonitoredRepos flag was not set and the SNYK_TOKEN was exported).
Fetch one/some/all the projects that the credentials have access to from SCM and create a projects list.
Fetch one/all repos under the fetched/provided projects.
Remove the repos that are not monitored by Snyk (if the skipSnykMonitoredRepos flag was not set and the SNYK_TOKEN was exported) and create a Repo list.
Create an import file for unmonitored repos to use for easily importing repos into Snyk account (if the importConfDir flag was set).
Fetch the commits for the fetched/provided repo/s and create a Contributors list.
Count the commits for the repo/s by the contributors.
Remove the contributors that were specified in the exclusion file (if the exclusionFilePath flag was set and a valid path to a text file was provided).
Print the results.
