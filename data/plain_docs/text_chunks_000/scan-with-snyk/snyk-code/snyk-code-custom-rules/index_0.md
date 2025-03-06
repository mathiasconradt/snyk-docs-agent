Feature availability
Snyk Code custom rules are Early Access and available only with Enterprise plans. To enable this feature, see Snyk Preview.

Create custom rules to run queries against the code stack as part of your investigation workflow. Use custom rules, as follows:

Define a custom vulnerable method (Sink) that security teams may be worried about.
Create regular expression scans to check for the use of secrets and credentials that should not be part of the code.
Determine whether certain unwanted methods are being called within the code base that are deemed unsafe by the security teams.
After creating a query, test it against a code snippet or repository you have previously imported to Snyk. This way, you can see the results of your query before you run regular scans. You can use this feature to validate a rule before pushing it to production and ensure that it provides the expected results.

You can run custom rules as part of any scan run by Snyk Code, and the feature is available when you are using Snyk Code in any of the following:

Snyk Web UI
Snyk CLI
IDE
