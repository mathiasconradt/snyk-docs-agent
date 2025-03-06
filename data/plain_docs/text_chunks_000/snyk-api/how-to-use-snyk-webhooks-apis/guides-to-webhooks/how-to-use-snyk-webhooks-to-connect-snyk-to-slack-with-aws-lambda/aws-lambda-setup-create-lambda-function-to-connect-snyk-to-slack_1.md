],
 },

],
 }
//send message
 const res = await axios.post(slackWebhookUrl, payload)
 const data = res.data
}
exports.handler = async (event) => {
     // Securing integrity of payload, this can be moved to another Lambda function and called seperately for authentication
     let response
 const  = process.env
 const hmac = crypto.createHmac('sha256', hmac_verification)
 const buffer = JSON.stringify(event.body)
 hmac.update(buffer, 'utf8')
 const stored_signature = sha256=$
let sent_signature = event.headers['x-hub-signature']
if (stored_signature !== sent_signature) {
   console.log('Integrity of request compromised, aborting')
   response = {
     statusCode: 403,
     body: JSON.stringify('Bad request'),
   }
   return response
 }
// If integrity is ok, verify that the webhook actually contains the project object, iterate and filter
 if (buffer.indexOf('project') !== -1 && buffer.indexOf('newIssues') !== -1) {
   // Iterate through new issues
   var len = buffer['newIssues'] ? buffer['newIssues'].length : 0
for (let x = 0; x < len; x++) {
     // Get Severity
     let severity = JSON.stringify(buffer'newIssues''issueData')
     // Filter
     if (severity.includes('high') || severity.includes('critical')) {
       let snykProjectName = JSON.stringify(buffer['project'].name)
       let snykProjectUrl = JSON.stringify(buffer['project'].browseUrl)
       let snykIssueUrl = JSON.stringify(buffer'newIssues'['issueData'].url)
       let snykIssueId = JSON.stringify(buffer'newIssues'.id)
       let snykIssuePackage = JSON.stringify(buffer'newIssues'.pkgName)
       let snykIssuePriority = JSON.stringify(buffer'newIssues'['priority'].score)
       let message = 'New Snyk Vulnerability'
   // Send the result to Slack
   await messageSlack(
     message,
     snykProjectUrl,
     snykProjectName,
     snykIssuePackage,
     snykIssueUrl,
     snykIssueId,
     severity,
     snykIssuePriority
   )
 }

}
 }
 //do nothing, or modify for any preferable action
 else {
   console.log('Valid webhook, but project missing or empty')
 }
//respond to Snyk
 response = {
   statusCode: 200,
   body: JSON.stringify('Success'),
 }
return response
}
`
2. Use the following commands in your terminal:\
   \-cd /path/to/snyk/folder(to navigate inside the folder where you stored the two files)\
   \-npm install(to set up a package. json file)\
   \-cd ..(to navigate back to previous folder)\
   \-zip -r snyk.zip /path/to/snyk/folder (to zip snyk into a file which can be uploaded to AWS Lambda)
To create an AWS Lambda function, follow these steps:
Go to the AWS Console.
Navigate to Lambda.
Click Create function.
Choose Node.js 16.x for the Runtime.
Choose X86_64 for the Architecture.
If publishing the Lambda function through API Gateway, add or create a role with the default policy AmazonAPIGatewayInvokeFullAccess to interact with the AWS API Gateway.
Verify that the AWS Console screen shows these entries:
AWS Console with entries to create a Lambda function
8. Click Create Function and when the function is ready click Upload from .zip file and
9.  Verify that the code you entered is displayed in the Code Source.
AWS code source display
10. In the code, modify the slackWebhookUrl to match your Slack webhook URL.
11. For more information on the script you have pasted, go to Configure the AWS Lambda Script.
