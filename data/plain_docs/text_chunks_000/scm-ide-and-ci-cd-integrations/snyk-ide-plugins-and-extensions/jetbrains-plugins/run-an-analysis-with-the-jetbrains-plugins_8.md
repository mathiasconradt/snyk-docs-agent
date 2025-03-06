The Snyk JetBrains IDE plugin will no longer detect container images specified in Kubernetes YAML files in versions released after June 24, 2025.

The JetBrains plugin scans Kubernetes configuration files and searches for container images. Vulnerabilities are found quickly using the extracted container images and comparative analysis against the latest information from the Snyk Vulnerability Database.
Snyk Container analysis shows each of the security vulnerabilities that might affect your image. To see more detailed information, select a vulnerability.
A comparison table is displayed with the severity levels such as critical or high. This shows the difference in vulnerabilities between the current image and the image recommended by Snyk, with the same characteristics sorted by severity. This helps you decide if you want to upgrade your image to the recommended one and increase the level of confidence in the image you are running in production.
