Use the snykSecurity step as part of your pipeline script. You can use the Snippet Generator to generate the code from a web form and copy it into your pipeline. Refer to the following example.
```
pipeline {
  agent any
stages {
    stage('Build') {
      steps {
        echo 'Building...'
      }
    }
    stage('Test') {
      steps {
        echo 'Testing...'
        snykSecurity(
          snykInstallation: '',
          snykTokenId: '',
          // place other parameters here
        )
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying...'
      }
    }
  }
}
```
You can pass the following parameters to yoursnykSecurity step.
snykInstallation (required)
Snyk Installation Name, as configured in step 2. Configure a Snyk installation.
snykTokenId (optional, default: _none_)
Snyk API Token Credential ID., as configured in step 3. Configure a Snyk API token credential.
If you prefer to provide the Snyk API token another way, such as using alternative credential bindings, you must provide a SNYK_TOKEN build environment variable.
failOnIssues (optional, default: true)
Whether the step should fail if issues and vulnerabilities are found.
failOnError (optional, default: true)
Whether the step should fail if Snyk fails to scan the project due to an error. Errors include scenarios like: failing to download Snyk's binaries, improper Jenkins setup, bad configuration, and server errors.
monitorProjectOnBuild (optional, default: _none_)
Whether to monitor the Project on every build by taking a snapshot of its current dependencies on Snyk.io. Selecting this option will keep you notified about newly disclosed vulnerabilities and remediation options in the Project.
organisation (optional, default: _automatic_)
The Snyk organisation in which this Project should be tested and monitored. See --org in the Snyk CLI commands and options summary for the default behavior.
projectName (optional, default: _automatic_)
A custom name for the Snyk Project created for this Jenkins project on every build. See --project-name in the CLI commands and options summary for default behavior.
targetFile (optional, default: _automatic_)
The path to the manifest file to be used by Snyk. See --file in the CLI commands and options summary for default behavior
severity (optional, default: _automatic_)
The minimum severity to detect. Can be one of the following: low, medium, high, critical. See --severity-threshold in the CLI commands and options summary for default behavior.
additionalArguments (optional, default: _none_)
See the CLI commands and options summary for information on additional CLI options.
