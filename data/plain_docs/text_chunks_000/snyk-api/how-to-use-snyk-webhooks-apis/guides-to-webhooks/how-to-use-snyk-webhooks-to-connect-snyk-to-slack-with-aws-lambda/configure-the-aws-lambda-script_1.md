The following code filters the Snyk payload.
Add as code:
```javascript
if(snykbody.indexOf("project") !== -1 && snykbody.indexOf("newIssues") !== -1){
    // Iterate through new issues
    var len = event.body['newIssues'].length;
for(let x=0;x<len;x++){    
    // Get Severity
    let severity = JSON.stringify(event.body'newIssues''issueData');
    // Filter
    if(severity.includes("high") || severity.includes("critical")){

        let snykProjectName = JSON.stringify(event.body['project'].name);
        let snykProjectUrl = JSON.stringify(event.body['project'].browseUrl);
        let snykIssueUrl = JSON.stringify(event.body'newIssues'['issueData'].url);
        let snykIssueId = JSON.stringify(event.body'newIssues'.id);
        let snykIssuePackage = JSON.stringify(event.body'newIssues'.pkgName);
        let snykIssuePriority = JSON.stringify(event.body'newIssues'['priority'].score);
        let message = "New Snyk Vulnerability";

        // Send the result to Slack
        const result = await messageSlack(
            message,snykProjectUrl,snykProjectName,snykIssuePackage,snykIssueUrl,snykIssueId,severity,snykIssuePriority
        );
    } 
}

```
The code does the following:

Checks for a valid project and issue
Iterates through the issues, checking if the severity is high or critical
Passes all the information you specify to the Slack message. Specify the information that you want.

You can modify the filter to cover only a specific CWE for example, or to allow all vulnerabilities.
