Snyk Terraform Cloud integration provides the following levels of customization:

Severity Threshold: Set the minimum level of severity for failure. This can be set on the integration page in Snyk.
Custom Severities: Set custom severities for issues that overwrite the defaults (for example, SNYK-CC-00172).
Enforcement Level: Determine whether a failure blocks the apply or not. This setting is controlled via Terraform Cloud. For example, the Advisory level does not block the apply even if Snyk finds issues within the minimum severity threshold.
