Scan all workspaces projects in the current directory and five sub-directories deep, plus any other Projects types detected.
bash
snyk test --all-projects --strict-out-of-sync=false --detection-depth=6
Use a common .snyk policy file, if you maintain ignores and patches in one place to be applied for all detected workspaces by using the policy path. For details about this file, see The .snyk file.
bash
snyk test --all-projects --strict-out-of-sync=false --policy-path=src/.snyk
