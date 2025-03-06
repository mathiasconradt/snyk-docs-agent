Configuring and managing this integration for a group is only supported by the Snyk REST API. 

To complete the setup of the integration for a Snyk Group, you must use the API endpoint Create a group registration.
You can use this sample request as a starting point:

curl --location --request POST 'https://api.snyk.io/rest/groups/<YOUR GROUP ID>/cloud_events/group_registrations?version=2023-01-25~experimental' \
--header 'Content-Type: application/vnd.api+json' \
--header 'Authorization: token <YOUR SNYK API TOKEN>' \
--data-raw '{
    "data": {
        "type": "group_registration",
        "attributes": {
            "type": "aws-cloudtrail",
            "name": "<NAME YOUR INTEGRATION>",
            "config": {
                "account_id": "<YOUR AWS ACCOUNT ID>",
                "channel_arn": "<CHANNEL ARN FROM PREVIOUS STEP>"
            }
        }
    }
}'
Be sure to replace each indicated placeholder value in the example appropriately:

<YOUR GROUP ID> - the Snyk Group ID you used in the previous step as the External ID
<YOUR SNYK API TOKEN> - your personal Snyk API token, which you can find in the Snyk dashboard under Account settings
<NAME YOUR INTEGRATION> - a name for this integration
<YOUR AWS ACCOUNT ID> - the AWS account ID for the AWS account form the previous step.
<CHANNEL ARN FROM PREVIOUS STEP> - the Channel ARN generated in the previous step when you added the Snyk integration in the CloudTrail Lake console.

If the call is successful, the API response will include an id for the registration. You can use this ID to manage and delete the integration later.
