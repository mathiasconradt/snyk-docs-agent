Before running Snyk CLI and Snyk Jenkins plugin on the Alpine Linux operating system, follow these steps to establish the prerequisites:

Ensure that libstdc++ is installed. \
   To install libstdc++, open a terminal from within the relevant container and run apk add libstdc++ .\
   The command either adds the shared library to your container environment or returns OK if the shared library is already installed in /usr/lib. 
Ensure that Snyk CLI version 1.185.5 or above is installed on your system. \
   Snyk recommends that you install the latest version.  
To use the Snyk Jenkins plugin, ensure also that the Snyk Jenkins plugin v2.10.0 or above is installed. \
   Snyk recommends that you install the latest version. 
After you install the Snyk CLI, you must authenticate.

For additional information see Install or update the Snyk CLI and Jenkins Plugin in the CI/CD docs.
