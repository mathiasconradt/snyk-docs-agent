Note that Bitbucket Server is a hosted environment, and you must provide the custom URL for your Bitbucket Server instance in the command.

Set the Bitbucket Server access token as an environment variable: export BITBUCKET_SERVER_TOKEN=your_personal_access_token
Run the command to generate organization data:\
   snyk-api-import orgs:data --source=bitbucket-server --groupId=<snyk_group_id> --sourceUrl=https://bitbucket-server.custom.com

This creates the organization data in a file group-<snyk_group_id>-bitbucket-server-orgs.json
