Refer to individual documentation pages for detailed information. The general steps are as follows:

export BITBUCKET_CLOUD_USERNAME=***, export BITBUCKET_CLOUD_PASSWORD=*** and export SNYK_TOKEN=***
Generate organization data, for example, snyk-api-import orgs:data --source=bitbucket-cloud --groupId=<snyk_group_id> Full instructions: Creating organizations in Snyk
Create organizations in Snyk: snyk-api-import orgs:create --file=orgs.json By following the full instructions on Creating organizations in Snyk you will create a snyk-created-orgs.json file with Snyk organization ids and integration ids that are needed for import.
Generate import data: snyk-api-import import:data --orgsData=snyk-created-orgs.json --source=bitbucket-cloud --integrationType=bitbucket-cloud Full instructions: Creating import targets data for import
Run import: DEBUG=*snyk* snyk-api-import import Full instructions: Kicking off an import``
