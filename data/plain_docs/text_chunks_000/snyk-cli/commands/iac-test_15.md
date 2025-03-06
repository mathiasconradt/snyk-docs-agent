Use this dedicated option for Custom Rules scanning to enable the IaC scans to use a custom rules bundle generated with the snyk-iac-rules SDK. See snyk-iac-rules SDK
This option cannot be used if the custom rules settings were configured with the Snyk UI. Default: If the --rules option is not specified, scan the configuration files using the internal Snyk rules only.
Example: Scan the configuration files using custom rules and internal Snyk rules.
--rules=bundle.tar.gz
This option can not be used in combination with the --report option.
