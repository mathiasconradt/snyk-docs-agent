Snyk returns a JSON document containing information about all resources in the Organization, for example:
json
{
  "jsonapi": {
    "version": "1.0"
  },
  "links": {
    "next": "/rest/orgs/d70c1768-5675-4f44-0000-1234abcd1234/cloud/resources?starting_after=eyJpZCI6IjY5ODA5MjNhLWU0ZTAtNDg3Mi04ZDAwLWRjZDEXAMPLEEXAMPLE&version=2022-04-13~experimental"
  },
  "data": [
    {
      "id": "23b3a46d-cdf7-526c-8888-1abc2abc3abc",
      "type": "resource",
      "attributes": {
        "environment_id": "ef5d85de-fb4f-4c42-1234-000000000000",
        "scan_id": "44f386a6-6ce8-4303-0000-098765432109",
        "created_at": "2022-08-07T05:34:24.272279Z",
        "updated_at": "2022-08-07T05:34:24.272279Z",
        "revision": 1,
        "kind": "cloud",
        "hash": "717cdff4218bf3d6abcdefEXAMPLEEXAMPLEEXAMPLEEXAMPLEEXAMPLEEXAMPLE",
        "platform": "aws",
        "namespace": "us-east-1",
        "resource_type": "aws_s3_bucket",
        "resource_id": "example-bucket",
        "native_id": "arn:aws:s3:::example-bucket",
        "name": "example-bucket",
        "location": "us-east-1",
        "state": {
          "id": "example-bucket",
          "acl": "private",
          "arn": "arn:aws:s3:::example-bucket"
          <trimmed for length>
        },
        "tags": {}
      },
      "relationships": {
        "environment": {
          "data": {
            "id": "ef5d85de-fb4f-4c42-1234-000000000000",
            "type": "environment"
          },
          "links": {
            "related": "/orgs/d70c1768-5675-4f44-0000-1234abcd1234/cloud/environments?id=ef5d85de-fb4f-4c42-1234-000000000000&version=2022-12-21~beta"
          }
        },
        "organization": {
          "data": {
            "id": "d70c1768-5675-4f44-0000-1234abcd1234",
            "type": "organization"
          },
          "links": {
            "related": "/orgs/d70c1768-5675-4f44-0000-1234abcd1234?version=2022-12-21~beta"
          }
        },
        "scan": {
          "data": {
            "id": "a7fa2167-58a8-4ac5-9999-0987dcba6543",
            "type": "scan"
          },
          "links": {
            "related": "/orgs/d70c1768-5675-4f44-0000-1234abcd1234/cloud/scans?id=a7fa2167-58a8-4ac5-9999-0987dcba6543&version=2022-12-21~beta"
          }
        }
      }
    }
    <trimmed for length>
  ]
}
The following table lists some key attributes from the API response:
| Attribute                        | Definition                                                                                   |
| -------------------------------- | -------------------------------------------------------------------------------------------- |
| data.id                        | Resource ID                                                                                  |
| data.attributes.environment_id | ID of the environment containing the resource                                                |
| data.attributes.scan_id        | ID of the scan where this resource was first detected                                        |
| data.attributes.resource_type  | Resource type                                                                                |
| data.attributes.native_id      | Cloud provider's unique identifier for the resource; for AWS, the Amazon Resource Name (ARN) |
| data.attributes.state          | Resource attributes at the time of the most recent scan                                      |
