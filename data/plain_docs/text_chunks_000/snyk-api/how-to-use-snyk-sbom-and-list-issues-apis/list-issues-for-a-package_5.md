Upgrade the package version to 4.2.15,5.0.8 to fix this vulnerability
Response details

The response is continuous, divided here to allow for explanations.

For each vulnerability, the response provides the following:


The Snyk issue ID and issue types:
json
"id": "SNYK-PYTHON-DJANGO-7642790",
"type": "issue",
*   General metadata about the vulnerability, including title, timestamps relevant to the vulnerability such as publication and disclosure time, and description:
json
"title": "Denial of Service (DoS)",
"type": "package_vulnerability",
"created_at": "2024-08-07T08:13:29.424951Z",
"updated_at": "2024-08-08T13:36:35.964359Z",
"description": ...
*   The CVE and CWE identifiers:
json
"problems": [
    {
        "id": "CVE-2024-41990",
        "source": "CVE"
    },
    {
        "id": "CWE-400",
        "source": "CWE"
    }
],
*   The severity or severities of the vulnerability:
json
"severities": [
    {
        "type": "primary",
        "source": "Snyk",
        "level": "medium",
        "score": 6.9,
        "version": "4.0",
        "vector": "CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:N/VA:L/SC:N/SI:N/SA:N"
    },
    {
        "type": "secondary",
        "source": "Snyk",
        "level": "medium",
        "score": 5.3,
        "version": "3.1",
        "vector": "CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:L"
    },
    {
        "type": "secondary",
        "source": "NVD",
        "level": "high",
        "score": 7.5,
        "version": "3.1",
        "vector": "CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H"
    },
    {
        "type": "secondary",
        "source": "Red Hat",
        "level": "high",
        "score": 7.5,
        "version": "3.1",
        "vector": "CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H"
    },
    {
        "type": "secondary",
        "source": "SUSE",
        "level": "high",
        "score": 7.5,
        "version": "3.1",
        "vector": "CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H"
    }
],



Starting in June 2024, all new advisories identified by Snyk Open Source are provided with both CVSS v4.0 and CVSS v3.1 severities. For the most accurate severity assessments, Snyk recommends using CVSS v4.0 when it is available.



Any fixes available for that vulnerability and the representation for vulnerable versions:
json
"coordinates": [
    {
        "remedies": [
            {
                "type": "indeterminate",
                "description": "Upgrade the package version to 4.2.15,5.0.8 to fix this vulnerability",
                "details": {
                    "upgrade_package": "4.2.15,5.0.8"
                }
            }
        ],
        "representations": [
            {
                "resource_path": "[,4.2.15),[5.0,5.0.8)"
            },
            {
                "package": {
                    "name": "django",
                    "version": "4.2.14",
                    "type": "pypi",
                    "url": "pkg:pypi/django@4.2.14"
                }
            }
        ]
    }
],
* Links to any external resources with further information on the vulnerability:


json
"references": [
 {
    "url": "https://www.djangoproject.com/weblog/2024/aug/06/security-releases/",
    "title": "Django Security Release"
},
    ...
Package metadata is returned, including the following:

Package name
Package type
Package URL specification
Package version

json
"meta": {
    "package": {
        "name": "django",
        "type": "pypi",
        "url": "pkg:pypi/django@4.2.14",
        "version": "4.2.14"
    }
}
Where applicable, pagination links for the results are included as follows:

Next path (if applicable)
Previous path (if applicable)
Current path

json
"links": {
    "prev": "/orgs/<org-id>/packages//issues?version=<api-version>&limit=1000&offset=0",
    "self": "/orgs/<org-id>/packages//issues?version=<api-version>&limit=1000&offset=1"
},
