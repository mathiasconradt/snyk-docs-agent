Before using the Snyk CLI to test your Open Source Project for vulnerabilities, with limited exceptions, you must build your Project. For details, see Open Source Projects that must be built before testing.
In addition, depending on the language of your open-source Project, you may need to set up your language environment before using the Snyk CLI. For details, refer to Supported languages, package managers, and frameworks.
After you have installed the CLI and authenticated your machine, to scan an open-source Project, use cd /my/project/ to change the current directory to a folder containing a supported package manifest file, such as package.json, pom.xml, or composer.lock. Then run snyk test. All vulnerabilities identified are listed, including their path and fix guidance.
To scan your source code, run snyk code test.
You can scan a Docker image by its tag running, for example: snyk container test ubuntu:18.04.
To scan a Kubernetes (K8s) file, run the following:\
snyk iac test /path/to/kubernetes_file.yaml
For details about using the Snyk CLI to scan each content type, see the following:

Snyk CLI for Snyk Open Source and the CLI help for the test and monitor commands
Snyk CLI for Snyk Code and the Snyk Code CLI help
Snyk CLI for Snyk Container, including Docker scanning, and the Snyk Container CLI help
Snyk CLI for Snyk IaC, including Terraform and Kubernetes (K8s) Projects, and the Snyk IAC CLI help
