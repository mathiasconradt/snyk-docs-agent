Snyk creates patches for high-impact vulnerabilities. A vulnerability is determined to be high-impact if it is a serious vulnerability in a popular package that affects many users.
The Snyk Security team creates the patch, usually by backporting a fix that has been added to the dependency. Backporting is the action of taking a fix that was built for a particular version of a piece of software and applying it to a previous version of that software. This is done by updating the software to be functionally identical but with the fix for the vulnerability applied. For more information, see Redhat’s description of Backporting Security Fixes.
After the patch is created by a Snyk Security Engineer, it is reviewed by two other members of the team. The patch is also tested in the following ways:

The package is built and tested using the package's automated tests
Packages or applications that use that patched package are tested using their automated tests.
Custom tests are created and run by the Snyk Security team

All patches are available for download and review by the community, and Snyk welcomes any feedback.
For unmaintained packages, Snyk will create a patch and open a pull request to the Project for the patch to be merged.
