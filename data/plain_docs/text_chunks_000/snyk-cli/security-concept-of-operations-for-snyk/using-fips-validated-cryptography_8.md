To make use of FIPS-validated cryptography in the Snyk Eclipse integration, do the following:

Ensure the prerequisites are met
Download the appropriate FIPS-enabled binaries.
Disable automatic binary management in the Snyk preferences.
Configure the integration to use the binary by setting the Language Server Path and the CLI Path to the same executable.
Configure the Java Runtime to use a FIPS-validated JCE (Java Cryptography Extension).
