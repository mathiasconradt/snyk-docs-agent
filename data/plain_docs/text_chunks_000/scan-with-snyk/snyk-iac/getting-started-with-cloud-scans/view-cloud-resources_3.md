Query parameters allow you to filter the list of resources.
For example, to return resources from a single environment, add environment_id=YOUR-ENVIRONMENT-ID to the URL:
curl -X GET \
  'https://api.snyk.io/rest/orgs/YOUR-ORGANIZATION-ID/cloud/resources?environment_id=YOUR-ENVIRONMENT-ID&version=2022-12-21~beta' \
  -H 'Authorization: token YOUR-API-TOKEN'
Some parameters allow you to specify multiple values. To return resources in Amazon Web Services (AWS) regions us-east-1 or us-east-2, add location=us-east-1,us-east-2 to the URL:
curl -X GET \
  'https://api.snyk.io/rest/orgs/YOUR-ORGANIZATION-ID/cloud/resources?location=us-east-1,us-east-2&version=2022-12-21~beta' \
  -H 'Authorization: token YOUR-API-TOKEN'
You can combine query parameters by using the & symbol. To return only 5 AWS S3 buckets, add resource_type=aws_s3_bucket&limit=5 to the URL:
curl -X GET \
  'https://api.snyk.io/rest/orgs/YOUR-ORGANIZATION-ID/cloud/resources?resource_type=aws_s3_bucket&limit=5&version=2022-12-21~beta' \
  -H 'Authorization: token YOUR-API-TOKEN'
For a list of supported parameters, see the List resources API documentation.
