Flow 

Set GitLab or GitLab Server mode (if a host was provided or not through the url flag).
Fetch one/some/all the groups that the credentials have access to from the SCM and create a groups list.
Fetch one/all projects under the fetched/provided groups.
Create an import file for unmonitored repos to use for easily importing repos into your Snyk account (if the importConfDir flag was set)
Fetch the commits for the fetched/provided project/s and create a Contributors list.
Count the commits for the project/s by the contributors.
Remove the contributors that were specified in the exclusion file (if the exclusionFilePath flag was set and a valid path to a text file was provided).
Print the results.
