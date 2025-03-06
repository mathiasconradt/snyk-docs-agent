Test a project in the current folder for known vulnerabilities:
$ snyk test
Test a specific dependency for vulnerabilities (npm only):
$ snyk test ionic@1.6.5
Test the latest version of an npm package:
$ snyk test lodash
Test a public GitHub repository:
$ snyk test https://github.com/snyk-labs/nodejs-goof
