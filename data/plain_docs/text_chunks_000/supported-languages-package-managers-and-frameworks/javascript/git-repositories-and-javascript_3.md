When creating a fix for vulnerabilities using npm v7+ Projects, Snyk will use the default npm save-prefix rather than inferring it from your Project.
This means if you have dependencies using a range format other than the caret range (^), you may see additional changes to the version fields in the package-lock.json file. 
These changes should not affect day-to-day functionality, as the ranges will be read from the package.json.
