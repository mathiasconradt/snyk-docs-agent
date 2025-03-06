If you find evidence that a malicious package was installed in your environment, you should do the following:

 Immediately remove it from the local drive, both the local folder node_modules and global package manager cache. 
Remove it from the package registry proxy cache and database if it exists.
Remove it from the package lockfile, package-lock.json for npm and yarn.lock for Yarn. 

You can remediate specific cases of malicious packages by implementing the following tactics:

Typosquatting:  Remove the malicious package and switch to the correct safe package.
Dependency confusion: If you imported the public package, either by accident or by default in the CI, before it was placed in "security holding," be sure to remove it. Ensure your development environment and the CI pipeline are configured to use the private registry and install the same-name internal package instead. 
Dependency hijacking and Compromised account: A new safe version is typically released after identifying the malicious package. To resolve this type of attack, update the package to a new version.

It is important to assume that your environment has been infected and to conduct internal security drills. After removing the malicious package, be sure to check for any remnants of the malicious code.
