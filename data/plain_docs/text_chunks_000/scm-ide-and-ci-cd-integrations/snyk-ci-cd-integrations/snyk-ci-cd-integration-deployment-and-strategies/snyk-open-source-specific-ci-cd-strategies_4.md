For Yarn workspaces, use the --yarn-workspaces option to test and monitor your packages. The root lockfile will be referenced for scans of all the packages. Use the --detection-depth option to find sub-folders that are not auto-discovered by default.

Support for Yarn workspaces is available for the snyk test and snyk monitor commands only.

An example command follows to scan only the packages that belong to any discovered workspaces in the current directory and five sub-directories deep.
snyk test --yarn-workspaces --detection-depth=6
You can use a common .snyk policy file if you maintain ignores and patches in one place to be applied for all detected workspaces by providing the policy path as follows:
snyk test --yarn-workspaces --policy-path=src/.snyk
