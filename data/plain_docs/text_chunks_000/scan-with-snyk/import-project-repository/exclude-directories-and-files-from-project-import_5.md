You have a repository called snyk-goof, which you want to test for vulnerabilities using Snyk Code. After you import his repository to Snyk, you get a list of ten detected vulnerability issues, which were found in three files:
Vulnerabilities detected found in three files
Now you want to exclude the app.js and db.js files from the Snyk Code analysis. To achieve that, you do the following:
1. You create a .snyk file in the snyk-goof repository in GitHub:
.snyk file in snyk-goof repository
2. In the .snyk file, you enter the following commands to exclude the app.js and db.js files from the import:
.snyk file commands
3. You retest the snyk-goof repository by clicking the Retest now option on the Code Analysis page for the repository.
The app.js and db.js files are excluded from the retest and, therefore, are not tested by Snyk Code and do not appear in the Code Analysis results. Now, only five vulnerability issues are detected:
Detected issues after files have been excluded
