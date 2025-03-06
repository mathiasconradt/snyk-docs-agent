The Infrastructure as Code Action also supports integrating with GitHub Code Scanning and can show issues in the GitHub Security tab. When the action is run, a snyk.sarif file is generated which can be uploaded to GitHub Code Scanning:
yaml
name: Snyk Infrastructure as Code
on: push
jobs:
  snyk:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Run Snyk to check configuration files for security issues
        # Snyk can be used to break the build when it detects security issues.
        # In this case we want to upload the issues to GitHub Code Scanning
        continue-on-error: true
        uses: snyk/actions/iac@master
        env:
          SNYK_TOKEN: $}
      - name: Upload result to GitHub Code Scanning
        uses: github/codeql-action/upload-sarif@v3
        with:
          sarif_file: snyk.sarif

To use the upload-sarif option for private repos you must have GitHub Advanced Security.  
If you see the error Advanced Security must be enabled for this repository to use code scanning, check that GitHub Advanced Security is enabled. For more information, see "Managing security and analysis settings for your repository."
