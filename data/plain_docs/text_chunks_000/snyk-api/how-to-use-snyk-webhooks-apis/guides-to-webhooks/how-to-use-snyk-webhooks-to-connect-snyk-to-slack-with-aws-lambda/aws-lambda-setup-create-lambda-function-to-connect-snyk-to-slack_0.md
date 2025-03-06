AWS Lambda functions are used to connect Snyk to Slack because these functions are an inexpensive and efficient way of running code triggered by events, for example when there is a new Snyk vulnerability.
If publishing the Lambda function through API Gateway, both must be configured in the same region. You can check this on the top right of the AWS Console.
Start by creating a zip file containing the code for the function and the necessary dependencies.
Save these two code blocks as package.json and index.js
package.json (modify to fit any other dependencies needed for your code, the dependencies needed are axios and crypto)
json
   {
     "name": "snyk-webhook-handler",
     "version": "1.0.0",
     "description": "Snyk to Slack Webhook Integration",
     "main": "index.js",
     "scripts": {
       "test": "echo \"Error: no test specified\" && exit 1"
     },
     "author": "",
     "license": "ISC",
     "dependencies": {
       "axios": "^1.1.3",
       "crypto": "^1.0.1"
     }
   }
   2.  index.js
``javascript
   const crypto = require('crypto')
   const axios = require('axios')
let slackWebhookUrl = '' // adjust
//customised messaging to Slack with issue information, modify as needed
   async function messageSlack(
     message,
     snykProjectUrl,
     snykProjectName,
     snykIssuePackage,
     snykIssueUrl,
     snykIssueId,
     severity,
     snykIssuePriority
   ) {
     //strings modified to avoid Axios/Slack errors
     snykProjectUrl = snykProjectUrl.replace(/['"]+/g, '')
     snykProjectName = snykProjectName.replace(/['"]+/g, '')
     snykIssueUrl = snykIssueUrl.replace(/['"]+/g, '')
     snykIssueId = snykIssueId.replace(/['"]+/g, '')
     snykIssuePackage = snykIssuePackage.replace(/['"]+/g, '')
     severity = severity.replace(/['"]+/g, '')
 //construct message
 let payload = {
   text:$,
   blocks: [
     {
       type: 'header',
       text: {
         type: 'plain_text',
         text:$,
       },
     },
     {
       type: 'section',
       text: {
         type: 'mrkdwn',
         text:Snyk has found a new vulnerability in the project:\n<$|$>,
       },
     },
     {
       type: 'divider',
     },
     {
       type: 'section',
       fields: [
         {
           type: 'mrkdwn',
           text:Package name:\n$,
         },
         {
           type: 'mrkdwn',
           text:Vulnerability:\n<$|$>,
         },
         {
           type: 'mrkdwn',
           text:Severity:\n$,
         },
         {
           type: 'mrkdwn',
           text:Priority Score:\n$`,
         },
       ],
     },
     {
       type: 'actions',
       elements: [
         {
           type: 'button',
           text: {
             type: 'plain_text',
             text: 'View in Snyk',
           },
           style: 'primary',
           url: snykProjectUrl,
           value: 'browseUrl',
         },
