Snyk GitHub Actions support integration with GitHub Code Scanning to show vulnerability information on the GitHub Security tab. The following applies to Snyk GitHub Actions for Open Source languages and package managers. For information on specific languages, package managers, and processes see the pages listed in GitHub Actions for Open Source languages and package managers and GitHub Actions for Snyk Container and Snyk Infrastructure as Code.
Using --sarif-file-output Snyk CLI option and the GitHub SARIF upload action, you can upload Snyk scan results to the GitHub Code Scanning as shown in the example that follows.
The Snyk Action fails when vulnerabilities are found. This would prevent the SARIF upload action from running. Thus you must use a continue-on-error option as shown in the example that follows.

To use this option for private repos you must have GitHub Advanced Security.
If you see the error Advanced Security must be enabled for this repository to use code scanning, check that GitHub Advanced Security is enabled. For more information, see "Managing security and analysis settings for your repository."

yaml
name: Example workflow using Snyk
on: push
jobs:
  security:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: Run Snyk to check for vulnerabilities
        uses: snyk/actions/node@master
        continue-on-error: true # To make sure that SARIF upload gets called
        env:
          SNYK_TOKEN: $}
        with:
          args: --sarif-file-output=snyk.sarif
      - name: Upload result to GitHub Code Scanning
        uses: github/codeql-action/upload-sarif@v3
        with:
          sarif_file: snyk.sarif
After you upload to GitHub Code Scanning support, you will see vulnerabilities on the GitHub Security tab as shown in the following screen image.
GitHub Security tab showing uploaded vulnerability
