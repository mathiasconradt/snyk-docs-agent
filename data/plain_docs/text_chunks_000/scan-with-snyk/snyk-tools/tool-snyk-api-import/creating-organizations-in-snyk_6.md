Note that the URL for Bitbucket Cloud is https://bitbucket.org/.

Set the Bitbucket Cloud Username and Password as environment variables: export BITBUCKET_CLOUD_USERNAME=your_bitbucket_cloud_username and export BITBUCKET_CLOUD_PASSWORD=your_bitbucket_cloud_password
Run the command to generate organization data:\
   snyk-api-import orgs:data --source=bitbucket-cloud --groupId=<snyk_group_id>

This creates the organization data in a file group-<snyk_group_id>-bitbucket-cloud-orgs.json
