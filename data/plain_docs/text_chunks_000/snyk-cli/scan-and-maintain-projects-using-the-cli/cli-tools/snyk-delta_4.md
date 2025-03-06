```
import  from 'snyk-delta'
const jsonResultsFromSnykTest = Read from file or pipe snyk test command
const result = await getDelta(jsonResultsFromSnykTest);
```
The result is a number:

0: no new issue
1: new issue(s) or when using StrictMode and the unmonitored Project has issues (See more details in StrictMode.)
2: for errors like invalid auth

Details for issues will be listed on stdout.
