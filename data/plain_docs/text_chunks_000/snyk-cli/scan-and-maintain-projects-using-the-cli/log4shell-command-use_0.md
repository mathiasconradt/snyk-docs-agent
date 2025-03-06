Introduction
snyk log4shell is a Snyk CLI command, that helps find traces of the log4j library that are affected by the Log4Shell vulnerability (CVE-2021-44228), even if this library is not declared in the manifest files (such as pom.xml or build.gradle).
This command tests your built project and third-party applications, and it is complementary to the snyk test and snyk test --scan-all-unmanaged commands.

Read more about the Log4Shell vulnerability in the Snyk VulnDB entry.

To test Java projects using their package manager manifest files, see Options for Maven projects and Options for Gradle projects in the CLI test command help.
To learn more about the snyk test --scan-all-unmanaged, see the Maven options section of the CLI reference.
