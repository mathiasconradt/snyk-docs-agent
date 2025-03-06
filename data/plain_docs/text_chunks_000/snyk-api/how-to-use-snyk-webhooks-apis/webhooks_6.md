json
{
  "id": "npm:ms:20170412",
  "issueType": "vuln",
  "pkgName": "ms",
  "pkgVersions": [
    "1.0.0"
  ],
  "issueData": {
    "id": "npm:ms:20170412",
    "title": "Regular Expression Denial of Service (ReDoS)",
    "severity": "low",
    "url": "https://snyk.io/vuln/npm:ms:20170412",
    "description": "Lorem ipsum",
    "identifiers": {
      "CVE": [],
      "CWE": [
        "CWE-400"
      ],
      "ALTERNATIVE": [
        "SNYK-JS-MS-10509"
      ]
    },
    "credit": [
      "Snyk Security Research Team"
    ],
    "exploitMaturity": "no-known-exploit",
    "semver": {
      "vulnerable": [
        ">=0.7.1 <2.0.0"
      ]
    },
    "publicationTime": "2017-05-15T06:02:45Z",
    "disclosureTime": "2017-04-11T21:00:00Z",
    "CVSSv3": "CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N/A:L",
    "cvssScore": 3.7,
    "language": "js",
    "patches": [
      {
        "id": "patch:npm:ms:20170412:2",
        "urls": [
          "https://snyk-patches.s3.amazonaws.com/npm/ms/20170412/ms_071.patch"
        ],
        "version": "=0.7.1",
        "comments": [],
        "modificationTime": "2019-12-03T11:40:45.866206Z"
      }
    ],
    "nearestFixedInVersion": "2.0.0"
  },
  "isPatched": false,
  "isIgnored": false,
  "fixInfo": {
    "isUpgradable": false,
    "isPinnable": false,
    "isPatchable": true,
    "nearestFixedInVersion": "2.0.0"
  },
  "priority": {
    "score": 399,
    "factors": [
      {
        "name": "isFixable",
        "description": "Has a fix available"
      },
      {
        "name": "cvssScore",
        "description": "CVSS 3.7"
      }
    ]
  }
}
