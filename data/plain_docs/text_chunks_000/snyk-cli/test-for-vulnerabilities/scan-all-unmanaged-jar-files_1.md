To scan each JAR file individually, use the following command:
snyk test --scan-unmanaged --file=/path/to/file
When you test each JAR file individually, the name of the JAR file that was scanned appears on the Snyk web UI.
WAR file support: You can scan individual WAR files that are published in Maven Central. To scan open-source dependency JARs directly, you must extract (unzip) all other WAR files or JAR files containing other JARs.
