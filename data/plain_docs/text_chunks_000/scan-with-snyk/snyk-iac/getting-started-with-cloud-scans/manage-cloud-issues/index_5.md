In AWS, you configure prod-backups-bucket to be private.
On the next scan, Snyk tests prod-backups-bucket against the rule again.
Snyk closes the issue because the bucket is not publicly readable and no longer fails the rule.
