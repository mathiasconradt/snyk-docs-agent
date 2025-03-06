The Snyk CLI can scan unmanaged JAR files in Java applications to identify which open-source package they contain.
The CLI identifies the package name, version, and vulnerabilities only if the package is available in Maven Central, and the JAR file hash matches the hash in Maven Central.
Prerequisite: You must install a supported version of Maven to scan unmanaged JAR files.
