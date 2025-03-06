When you scan container images using snyk container test, you can ignore issues that are not relevant to you by setting an ignore in The .snyk file.
Snyk recommends storing and versioning the .snyk file in the root of your working directory.
After you set an ignore, when you use the snyk container test or snyk container monitor command, you must use the --policy-path= option. An example follows:
snyk container test node --policy-path=.snyk.
