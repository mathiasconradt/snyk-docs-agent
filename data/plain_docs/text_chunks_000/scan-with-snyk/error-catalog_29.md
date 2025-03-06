Organization is not part of a group
This error occures when trying to add tags to Organizations that that are part of a Group.
Verify with your Group Admin if the Organization should be in a Group.
If you have more than one Organization, you can set the Organization with which new Projects should be associated by running snyk config set org=ORG_ID.
If you want to override this global configuration for individual runs of snyk monitor, run snyk test --org=ORG_ID or snyk monitor --org=ORG_ID.
HTTP Status: 422
Help Links:
- https://docs.snyk.io/snyk-admin/snyk-projects/project-tags
