When you ignore an issue, you must consider the following factors:

How was the Project imported: Through an SCM? Through the CLI?
What Snyk product scanned the How was the ignore created: In a policy? Through the UI from the Project page? Using an API? In a  .snyk file?
For ignores created in a policy, ignoring an issue on the Organization level will ensure the issues are ignored for Projects imported using an SCM and Projects imported using the CLI.
Ignoring for a particular Project or attribute will ensure the issue is ignored only for the specific Project and only for Projects imported using an SCM.
For more information, see Ignore issues in the Snyk Web UI, Security policies, and The .snyk file.

Depending on these factors, the ignore is respected for testing in different places. Where will the ignore be respected testing?

In the UI and an SCM PR test?
In a CLI test, either local or in a build pipeline, and in an IDE test?

For information about deciding to ignore issues and setting ignores, see Ignore Issues.

Test results are the same for an ignore set by policy and an ignore set by the .snyk file, whether you have imported the Project through an SCM or the CLI.
If you added an ignore in the UI, support for ignores and the test results differ from support and results for Projects imported through an SCM and through the CLI.
