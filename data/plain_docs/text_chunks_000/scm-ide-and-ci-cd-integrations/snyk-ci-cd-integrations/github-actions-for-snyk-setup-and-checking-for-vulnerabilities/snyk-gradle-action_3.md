Using --sarif-file-output Snyk CLI option and the GitHub SARIF upload action, you can upload Snyk scan results to GitHub Code Scanning.
The Snyk Action fails when vulnerabilities are found. This would prevent the SARIF upload action from running. Thus you must use a continue-on-error option as shown in the example:
yaml
name: Example workflow for Gradle using Snyk
on: push
jobs:
  security:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: Run Snyk to check for vulnerabilities
        uses: snyk/actions/gradle@master
        continue-on-error: true # To make sure that SARIF upload gets called
        env:
          SNYK_TOKEN: $}
        with:
          args: --sarif-file-output=snyk.sarif
      - name: Upload result to GitHub Code Scanning
        uses: github/codeql-action/upload-sarif@v3
        with:
          sarif_file: snyk.sarif

To use the upload-sarif option for private repos you must have GitHub Advanced Security.  
If you see the error Advanced Security must be enabled for this repository to use code scanning, check that GitHub Advanced Security is enabled. For more information, see "Managing security and analysis settings for your repository."
