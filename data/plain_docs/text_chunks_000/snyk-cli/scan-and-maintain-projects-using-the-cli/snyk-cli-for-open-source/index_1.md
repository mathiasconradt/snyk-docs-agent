To test your Project for known vulnerabilities:

Navigate to the folder containing your Project (cd ~/projects/myproj/)
Run $ snyk test.

The snyk test command identifies all the local dependencies and queries the Snyk service for known vulnerabilities. snyk test displays the issues found along with additional information. For information about the snyk test results, see Review the Snyk Open Source CLI results.

For Node.js, Ruby, and Java Projects, snyk test also suggests fix steps.
