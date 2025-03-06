Flow 

Fetch one/some/all the orgs (according to the fetchAllOrgs flag) that the credentials have access to from SCM and create an orgs list.
Fetch one/all repos under the fetched/provided orgs.
Fetch the commits for the fetched/provided repo/s and create a Contributors list.
Count the commits for the repo/s by the contributors.
Remove the contributors that were specified in the exclusion file (if the exclusionFilePath flag was set and a valid path to a text file was provided).
Print the results.
