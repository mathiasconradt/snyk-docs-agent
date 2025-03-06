The Docker Action also supports integrating with GitHub Code Scanning and can show issues in the GitHub Security tab. As long as you reference a Dockerfile with --file=Dockerfile in the args, a snyk.sarif file will be generated which can be uploaded to GitHub Code Scanning.
yaml
name: Snyk Container
on: push
jobs:
  snyk:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: Build a Docker image
      run: docker build -t your/image-to-test .
    - name: Run Snyk to check Docker image for vulnerabilities
      # Snyk can be used to break the build when it detects vulnerabilities.
      # In this case we want to upload the issues to GitHub Code Scanning
      continue-on-error: true
      uses: snyk/actions/docker@master
      env:
        # In order to use the Snyk Action you will need to have a Snyk API token.
        # See https://docs.snyk.io/integrations/ci-cd-integrations/github-actions-integration#getting-your-snyk-token
        # or you can sign up for free at https://snyk.io/login
        SNYK_TOKEN: $}
      with:
        image: your/image-to-test
        args: --file=Dockerfile
    - name: Upload result to GitHub Code Scanning
      uses: github/codeql-action/upload-sarif@v3
      with:
        sarif_file: snyk.sarif

To use the upload-sarif option for private repos you must have GitHub Advanced Security.  
If you see the error Advanced Security must be enabled for this repository to use code scanning, check that GitHub Advanced Security is enabled. For more information, see "Managing security and analysis settings for your repository."
