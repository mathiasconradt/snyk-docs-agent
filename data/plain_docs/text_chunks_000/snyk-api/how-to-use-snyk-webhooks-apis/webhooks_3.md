project
See Projects (v1) APIs.
json
"project": {
  "name": "snyk/goof",
  "id": "af137b96-6966-46c1-826b-2e79ac49bbd9",
  "created": "2018-10-29T09:50:54.014Z",
  "origin": "github",
  "type": "maven",
  "readOnly": false,
  "testFrequency": "daily",
  "totalDependencies": 42,
  "issueCountsBySeverity": {
    "low": 13,
    "medium": 8,
    "high": 4,
    "critical": 5
  },
  "imageId": "sha256:caf27325b298a6730837023a8a342699c8b7b388b8d878966b064a1320043019",
  "imageTag": "latest",
  "imageBaseImage": "alpine:3",
  "imagePlatform": "linux/arm64",
  "imageCluster": "Production",
  "hostname": null,
  "remoteRepoUrl": "https://github.com/snyk/goof.git",
  "lastTestedDate": "2019-02-05T08:54:07.704Z",
  "browseUrl": "https://app.snyk.io/org/4a18d42f-0706-4ad0-b127-24078731fbed/project/af137b96-6966-46c1-826b-2e79ac49bbd9",
  "importingUser": {
    "id": "e713cf94-bb02-4ea0-89d9-613cce0caed2",
    "name": "example-user@snyk.io",
    "username": "exampleUser",
    "email": "example-user@snyk.io"
  },
  "isMonitored": false,
  "branch": null,
  "targetReference": null,
  "tags": [
    {
      "key": "example-tag-key",
      "value": "example-tag-value"
    }
  ],
  "attributes": {
    "criticality": [
      "high"
    ],
    "environment": [
      "backend"
    ],
    "lifecycle": [
      "development"
    ]
  },
  "remediation": {
    "upgrade": {},
    "patch": {},
    "pin": {}
  }
}
