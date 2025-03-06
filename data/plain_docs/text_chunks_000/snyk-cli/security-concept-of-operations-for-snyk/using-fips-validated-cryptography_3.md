Linux operating systems
On Linux, Snyk supports FIPS-validated cryptography through OpenSSL and its validated FIPS provider.
Ensure that your Linux system has OpenSSL installed and configured to meet FIPS validation requirements. For information about how to accomplish this, see the documentation from the OpenSSL project.
Windows operating systems
On Windows, Snyk supports FIPS-validated cryptography through the Windows CNG API.
To enable FIPS on Windows, use the Windows FIPS policy.
For testing, FIPS can be enabled using the following registry key   HKLM\SYSTEM\CurrentControlSet\Control\Lsa\FipsAlgorithmPolicy by setting the value of Enabled to 1.
