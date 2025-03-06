Refer to individual documentation pages for detailed information. The general steps are as follows:

export GITHUB_TOKEN=*** and export SNYK_TOKEN=***
Generate organization data, for example, snyk-api-import orgs:data --source=github --groupId=<snyk_group_id> Full instructions: Creating organizations in Snyk
Create organizations in Snyk: snyk-api-import orgs:create --file=orgs.json By following the full instructions on Creating organizations in Snyk you will create a snyk-created-orgs.json file with Snyk organization ids and integration ids that are needed for import.
Generate import data: snyk-api-import import:data --orgsData=snyk-created-orgs.json --source=github --integrationType=github Full instructions: Creating imports targets data for import
Run import: DEBUG=*snyk* snyk-api-import importFull instructions: Kicking off an import
