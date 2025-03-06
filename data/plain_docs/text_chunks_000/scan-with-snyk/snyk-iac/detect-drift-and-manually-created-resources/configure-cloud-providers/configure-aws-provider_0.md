Authentication for AWS provider
To use iac describe, set up credentials to make authenticated requests to AWS. As you do for the AWS CLI, use credentials and configuration settings declared as user environment variables or in local AWS configuration files.
The iac describe command supports a named profile. By default, the CLI uses the settings found in the profile named default. You can override an individual setting by declaring the supported environment variables such as AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, AWS_PROFILE and so on.
If you are using an IAM role as an authorization tool, which is considered a good practice, you can still use iac describe by defining a profile for the role in your ~/.aws/config file.
[profile snykrole]
role_arn = arn:aws:iam::123456789012:role/<NAMEOFTHEROLE>
source_profile = user # profile to assume the role
region = eu-west-3
You can now use iac describe by overriding the profile setting.
$ AWS_PROFILE=snykrole snyk iac describe
