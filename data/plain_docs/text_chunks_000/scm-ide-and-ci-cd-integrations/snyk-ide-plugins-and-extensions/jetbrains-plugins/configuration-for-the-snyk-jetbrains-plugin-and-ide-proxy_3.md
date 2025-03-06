These options allow to customize the handling of the plugin dependency on Snyk CLI. 

Base URL to download the CLI: Allow specifying an alternative download location of the CLI. This location must conform to the same file and folder layout as https://downloads.snyk.io. For example, FIPS-supported CLIs would use the base URL https://static.snyk.io/fips.
Path to Snyk CLI: Allow changing a file path of the Snyk CLI.
When Automatically manage needed binaries is checked, the plugin will download the CLI and update it regularly to the defined CLI Path. Uncheck this option if downloading the CLI is not possible due to your network configuration, for example, due to firewall rules, and you need to obtain the CLI through other means.
CLI release channel: Allow specifying a release channel (preview, rc, stable) for the CLI. You can also pin the CLI to a version here, specifying the version, for example,v1.1293.1.
