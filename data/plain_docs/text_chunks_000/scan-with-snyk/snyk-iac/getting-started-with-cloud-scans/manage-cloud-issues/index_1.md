Issues have the following components:

Resource: The cloud resource that is tested, such as an AWS S3 bucket
Rule: The rule that is used to test the resource, such as "S3 bucket is publicly readable"


See Key concepts for more details.

The first time a misconfiguration is detected, Snyk opens an issue for that rule and resource. The issue remains open across scans as long as the misconfiguration is present.
In a later scan, if the misconfiguration is resolved, Snyk closes the issue.
