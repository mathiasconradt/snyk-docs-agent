Feature availability\
This feature is available only with Enterprise plans. For more information, see plans and pricing.

With the Snyk plugin for Artifactory, you can scan your artifacts for open-source vulnerabilities and license issues.
After the plugin is installed, it runs in the background and can do the following automatically:

Add vulnerability and license issue counts from Snyk as properties in an artifact
Block developers from downloading packages with vulnerability and license issues according to a configured threshold

By scanning artifacts as part of your workflow and then displaying those test results directly from the Artifactory UI, the Snyk Artifactory Gatekeeper Plugin enables you to track and identify issues that are risks to your application security more quickly and to avoid using those artifacts in your Projects.

This page refers to the Artifactory Plugin, an independent piece of software that is installed on the Artifactory machine and serves as a gatekeeper, blocking vulnerable packages from being downloaded from the Artifactory instance.
This plugin is separate from the Artifactory Registry for Maven, a Snyk integration that allows configuring SCM scans to use custom package registries.
