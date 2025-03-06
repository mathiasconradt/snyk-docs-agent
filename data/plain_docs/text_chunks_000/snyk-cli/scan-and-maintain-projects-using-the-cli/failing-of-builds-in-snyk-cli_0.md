The snyk test command has the following options for failing your builds:
--severity-threshold=low|medium|high|critical Report only vulnerabilities of the specified level or higher.
--fail-on=all Fail when there is at least one vulnerability that can be either upgraded or patched.
--fail-on=upgradable Fail when there is at least one vulnerability that can be upgraded.
--fail-on=patchable Fail when there is at least one vulnerability that can be patched or vulnerabilities that can be either patched or upgraded.
The Snyk CLI on its own does not have the capability natively to fail tests on more complex use cases. Here are some ways to achieve more complex pass/fail criteria.
