Once initial import is complete you can periodically check for new repos and make sure they are added into Snyk by following these steps, which are similar to the preceding steps to import repos.

export BITBUCKET_SERVER_TOKEN=*** and export SNYK_TOKEN=***
Generate organization data in Snyk and skip any that do not have any repos by using --skipEmptyOrg snyk-api-import orgs:data --source=bitbucket-server --groupId=<snyk_group_id> --skipEmptyOrg Full instructions: Creating organizations in Snyk
Create organizations in Snyk and this time skip any that have been created already with --noDuplicateNames parameter snyk-api-import orgs:create --file=orgs.json --noDuplicateNames By following the full instructions on Creating organizations in Snyk you will create a snyk-created-orgs.json file with Snyk organization ids and integration ids that are needed for import.
Generate import data: snyk-api-import import:data --orgsData=snyk-created-orgs.json --source=bitbucket-server --integrationType=bitbucket-server Full instructions: Creating import targets data for import
Optional - Generate the previously imported log to skip all previously imported repos in a Group: snyk-api-import-macos list:imported --integrationType=<integration-type> --groupId=<snyk_group_id> Full instructions: Kicking off an import``
Run import: DEBUG=*snyk* snyk-api-import importFull instructions: Kicking off an import``
