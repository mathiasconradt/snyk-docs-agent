To re-include in the test directories or files that were excluded from it, manually edit or delete the .snyk file.
1. In the snyk-goof-master folder, 12 issues were found in three different files: app.js, db.js, and routes/index.js:
Issues found by a CLI test
2. To exclude the app.js and db.js files, and display only issues that are discovered in the routes/index.js file, enter:
snyk ignore --file-path=app.js && snyk ignore --file-path=db.js
snyk ignore command in the terminal
3. When you enter the command snyk ignore, the .snyk file is created automatically in the snyk-goof-master folder:
.snykfile listed in the folder
This .snyk file contains the files  specified for exclusion:
Contents of .snyk file
4. When the test runs again, the app.js and db.js files are excluded from the test, and the results show only the issues that were found in the routes/index.js file:
Issues found after using the ignore command
