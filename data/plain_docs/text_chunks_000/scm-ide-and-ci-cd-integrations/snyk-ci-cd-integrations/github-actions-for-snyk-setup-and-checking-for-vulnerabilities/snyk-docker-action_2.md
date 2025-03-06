The Snyk Docker Action has properties which are passed to the underlying image. These are passed to the action using with.
| Property | Default | Description                                                |
| -------- | ------- | ---------------------------------------------------------- |
| args     |         | Override the default arguments to the Snyk image           |
| command  | test    | Specify which command to run, for instance test or monitor |
| image    |         | The name of the image to test                              |
| json     | false   | In addition to the stdout, save the results as snyk.json   |
| sarif    | true    | In addition to the stdout, save the results as snyk.sarif  |
For example, You can use the Snyk Docker Action to check for only high severity vulnerabilities as follows:
yaml
name: Example workflow for Docker using Snyk 
on: push
jobs:
  security:
    runs-on: ubuntu-latest
    steps:
    - name: Run Snyk to check Docker images for vulnerabilities
      uses: snyk/actions/docker@master
      env:
        SNYK_TOKEN: $}
      with:
        image: your/image-to-test
        args: --severity-threshold=high
