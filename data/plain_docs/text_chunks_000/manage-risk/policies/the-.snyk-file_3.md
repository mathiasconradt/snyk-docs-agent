When you select the Fix a vulnerability button on a Git repository Open Source scan, and a Snyk patch is available, and an upgrade is not possible, a .snyk file is added to the pull request to specify a patch. Creating Snyk patches is supported for npm and Yarn only.
The following example shows how to create a .snyk file to generate a patch rule using a vulnerability fix PR:
```
