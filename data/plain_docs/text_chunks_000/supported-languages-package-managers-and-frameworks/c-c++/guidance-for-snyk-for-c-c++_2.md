In the case of package managers like npm or Maven, Snyk traditionally uses the managed open-source capabilities of snyk test and snyk monitor. In the case of C/C++, Snyk supports unmanaged dependencies by adding --unmanaged.

Snyk does not hook into a build nor rely on a build to perform scanning. Snyk performs analysis from source code.


Open Source source code must be present.
Snyk fingerprints files and compares them to the Snyk database to identify packages, versions, licenses, and vulnerabilities.
