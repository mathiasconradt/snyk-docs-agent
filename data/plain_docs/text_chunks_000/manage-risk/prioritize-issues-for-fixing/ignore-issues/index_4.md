You can suppress issues through the CLI by using the snyk ignore command, for example:
snyk ignore --id='npm:braces:20180219' --expiry='2018-04-01' --reason='testing'
For more information, see the ignore command help and Ignore vulnerabilities using Snyk CLI.
When you use snyk ignore for Open Source, the .snyk policy file is updated with the path and reason given if one was provided. An example follows:
'npm:moment:20170905':
- moment:
reason: The reason given
expires: '2017-12-29T16:10:16.946Z'
For more information, see Use the .snyk file to ignore issues.
