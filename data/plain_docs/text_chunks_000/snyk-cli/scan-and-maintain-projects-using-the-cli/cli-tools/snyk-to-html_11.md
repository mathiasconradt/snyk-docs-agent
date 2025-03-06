To display the actions you can take to remedy vulnerabilities, use the -a or --actionable-remediation option.
snyk-to-html -i results.json -o results.html -a
The report sequences remediations, upgrades, and patches by the number and severity of vulnerabilities the remediation fixes. Use this as a guide when you are selecting the order in which to upgrade and patch packages.
Snyk supports remediation advice for the following package managers:

npm
Yarn
RubyGems
Maven
Gradle
sbt
Pip
