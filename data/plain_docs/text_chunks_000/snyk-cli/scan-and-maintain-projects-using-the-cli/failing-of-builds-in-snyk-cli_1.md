Security policies provide the capability to change the severity of a vulnerability, when a Project is tested against an Organization using that policy and the severity matches specific criteria. You could, for example, change the severity of a vulnerability from high to low, and if you run snyk test with the option --severity-threshold=medium|high, this previously high severity vulnerability no longer fails the build.

Security policies do not have all attributes available for criteria matching. Refer to the security policy configuration to see what is available.

An example follows of snyk test with the option --severity-threshold=high running against a default Organization with no policy applied to it.

The following example shows thesnyk test command with the option --severity-threshold=high running against an Organization with a policy that downgrades this particular vulnerability severity to low. There are no vulnerabilities found.
