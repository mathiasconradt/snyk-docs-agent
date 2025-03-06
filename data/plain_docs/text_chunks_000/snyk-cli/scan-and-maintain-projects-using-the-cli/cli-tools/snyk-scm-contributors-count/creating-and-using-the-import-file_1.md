importConfDir - This flag indicates that a query for unmonitored repos should be made and expects a path to a folder (with write privileges) in which to create the json import files, for example :
snyk-scm-contributors-count <command> --token TOKEN -- importConfDir /snyk/import/
By default, this command populates the json import files with all types of unmonitored repos found when scanning the SCM.
importFileRepoType - This flag can be set with the values of all, private, or public (case insensitive) to fill the import file with only data from the given repo type, for example:
snyk-scm-contributors-count <command> --token TOKEN -- importConfDir /snyk/import/ --importFileRepoType 'private'

The import file requires an OrgID and IntegrationID from the user in order to import them to the right organization and integration at Snyk.
The tool will try to find these two values from Snyk (provided that a SNYK_TOKEN was exported and that the org mapping at Snyk is mirrored to that of the SCM) and if the tool can not find those values, the user will be prompted to supply them in the command line.
Once the user has stated the values for OrgID and IntegrationID once, these values will be set for ALL the entries in the import file (meaning that all the imported repos will be under the same org in Snyk).
