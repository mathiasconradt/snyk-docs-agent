You can add options to the snyk test command to refine parameters that can result in a failed build:

--severity-threshold=high: Fail the build only for high-severity issues
--fail-on=upgradable: fail the build only for issues that are upgradable (can be fixed with Snyk fix advice)

You can also fail the build for any other parameter in the Snyk JSON output (such as CVSS score), using a wrapper like snyk-filter, or using additional tooling like snyk-delta to fail the build only for issues found since the last build. For information on using snyk-filter and snyk-delta see Failing of builds in the Snyk CLI.
