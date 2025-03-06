By default if issues are not ignored, or if you are not using snyk-delta, a snyk test in your pipeline fails the build when issues are found. To allow builds to continue without resolving these issues, you can:

Ignore issues using a .snyk policy file
Ignore issues from the Snyk UI
Ignore issues using the Ignores API
Use the Snyk Python API for bulk ignores: see pysnyk and the demo bulk-ignore-vulns-by-issueIdList.
