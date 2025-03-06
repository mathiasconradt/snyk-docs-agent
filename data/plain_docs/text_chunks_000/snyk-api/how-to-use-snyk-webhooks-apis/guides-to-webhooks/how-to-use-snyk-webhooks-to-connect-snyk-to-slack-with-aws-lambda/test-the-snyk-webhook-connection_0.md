The Snyk Webhook only updates when there is a new vulnerability found, but you can test your implementation using Postman.
If you don’t have Postman you can install it for free.
To test, you will send a POST request to the AWS API Gateway with a sample payload that is secured with your API token.
Follow these steps to test the connection:

Install Postman.

Create a Collection.
Create new Postman Collection
3.  Add your API token (secret-string) as an environment variable in the collection .\
Name the variable x-hub-signatureso you can use the variable to verify the integrity of the payload.\
Refer to Set up the Snyk Webook for instructions on finding the API token.
Create new Postman Collection
4.  Within the collection create a new HTTP Request.
Postman create API Request
5.  Change the method to POST and add your API Gateway URL or Function URL. Refer to AWS API Gateway: add the POST method to connect Snyk to Slack for instructions on finding the URL.
Postman POST method add AWS API Gateway URL
6.  Configure your pre-request script to look like the following code. This script get your API token and secures it so when Snyk sends it with the payload the Lambda function can decrypt the payload.\
The code follows; remember to change enter your API token for 'your-secret-string-here'.\
\
postman.setEnvironmentVariable('x-hub-signature', CryptoJS.HmacSHA256(request.data, 'your-secret-string-here').toString(CryptoJS.digest)); postman.setEnvironmentVariable('x-hub-signature', 'sha256='+ postman.getEnvironmentVariable('x-hub-signature'));\
Postman pre-request script
7.  Add the Headers:\
Content-Type: application/json\
x-hub-signature }: (The API token (secret-string) environment variable you created in step 3.
Postman POST request headers
8.  Add to the Body a valid payload, for example the one here and do not beautify it, if it looks readable it will not work:\
,"imageTag":"12.3.0","imagePlatform":"","lastTestedDate":"2022-06-29T05:45:12.569Z","browseUrl":"https://app.snyk.io/org/api-test/project/bc75a806-0893-4ccf-84c5-8fde48a88df7","importingUser":null,"owner":null,"tags":[],"isMonitored":true,"attributes":,"branch":"master"},"org":,"newIssues":[,]},"issueData":,"credit":["Paul Bastide"],"exploitMaturity":"no-known-exploit","semver":,"publicationTime":"2022-06-29T10:29:38Z","disclosureTime":"2022-01-13T16:29:34Z","CVSSv3":"CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:L","cvssScore":5.3,"functions":[],"language":"js","patches":[],"nearestFixedInVersion":"","isMaliciousPackage":false},"isPatched":false,"isIgnored":false,"fixInfo":}],"removedIssues":[]}
Postman POST request body with valid payload
9. Click the Send button next to the URL
10. Verify that a Success message (statusCode 200)appears at the bottom of Postman.
Postman success message
11. Verify that you see a new notification in Slack: New Snyk Vulnerability with the path, Package name, scss-tokenizer, Severity level, Vulnerability name, and Priority Score.
New Slack notification of vulnerability
The next time Snyk finds a new vulnerability, you will see a notification from Snyk in Slack.
