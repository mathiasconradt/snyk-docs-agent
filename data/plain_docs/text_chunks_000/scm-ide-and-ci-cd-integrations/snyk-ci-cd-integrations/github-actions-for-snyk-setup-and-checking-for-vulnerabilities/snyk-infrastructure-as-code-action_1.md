You can use the Snyk Infrastructure as Code Action to check for vulnerabilities as follows:
yaml
name: Example workflow for Snyk Infrastructure as Code
on: push
jobs:
  security:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Run Snyk to check Kubernetes manifest file for issues
        uses: snyk/actions/iac@master
        env:
          SNYK_TOKEN: $}
Snyk Infrastructure as Code Action properties
The Snyk Infrastructure as Code Action has properties which are passed to the underlying image. These are passed to the action using with:
| Property  | Default  | Description                                                       |
| --------- | -------- | ----------------------------------------------------------------- |
| args    |          | Override the default arguments to the Snyk image.                 |
| command | "test" | Specify which command to run, currently only test is supported. |
| file    |          | The paths in which to scan files with issues.                     |
| json    | false  | In addition to the stdout, save the results as snyk.json          |
| sarif   | true   | In addition to the stdout, save the results as snyk.sarif         |
