Report only vulnerabilities at the specified level or higher.
--fail-on=<all|upgradable>
Fail only when there are vulnerabilities that can be fixed.

all: fail when there is at least one vulnerability that can be either upgraded or patched.
upgradable: fail when there is at least one vulnerability for which Snyk has a computed remediation available.

To fail on any Snyk discoverable vulnerability (the default behavior), do not use the --fail-on option. If vulnerabilities do not have a Snyk-computed fix and this option is being used, tests pass.
If you test code constrained by metadata that Snyk cannot respect with snyk test, Snyk will not propose a fix, in order to avoid breaking your code. You may be able to identify and apply a fix manually.
