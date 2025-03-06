The Slack payload is formatted in the messageSlack function as follows.
```javascript
async function messageSlack(message,snykProjectUrl,snykProjectName,snykIssuePackage,snykIssueUrl,snykIssueId,severity,snykIssuePriority) {
//strings modified to avoid Axios/Slack errors 
snykProjectUrl = snykProjectUrl.replace(/['"]+/g, '')
snykProjectName = snykProjectName.replace(/['"]+/g, '')
snykIssueUrl = snykIssueUrl.replace(/['"]+/g, '')
snykIssueId = snykIssueId.replace(/['"]+/g, '')
snykIssuePackage = snykIssuePackage.replace(/['"]+/g, '')
severity = severity.replace(/['"]+/g, '')

//construct message
let payload = `,
                "blocks": [
                    {
                        "type": "header",
                        "text": {
                            "type": "plain_text",
                            "text": `$`,
                        }
                    },{
                        "type": "section",
                        "text": {
                            "type": "mrkdwn",
                            "text": "Snyk has found a new vulnerability in the project:\n*<"+snykProjectUrl+"|"+snykProjectName+">*"
                        }
                    },
                    {
                        "type": "divider"
                    },
                    {
                        "type": "section",
                        "fields": [
                            {
                                "type": "mrkdwn",
                                "text": "*Package name:*\n"+snykIssuePackage
                            },
                            {
                                "type": "mrkdwn",
                                "text": "*Vulnerability:*\n<"+snykIssueUrl+"|"+snykIssueId+">"
                            },
                            {
                                "type": "mrkdwn",
                                "text": "*Severity:*\n"+severity
                            },
                            {
                                "type": "mrkdwn",
                                "text": "*Priority Score:*\n"+snykIssuePriority
                            }
                        ]
                    },
                    {
                        "type": "actions",
                        "elements": [
                            {
                                "type": "button",
                                "text": {
                                    "type": "plain_text",
                                    "text": "View in Snyk"
                                },
                                "style": "primary",
                                "url": snykProjectUrl,
                                "value": "browseUrl"
                            }
                        ]
                    }
               ]};

//send message 
const res = await axios.post(slackWebhookUrl, payload);
const data = res.data;
console.log(data);

}
```
Snyk used Slack’s built-in block builder to design the payload in the desired format. With the block builder you can configure the JSON of the payload to display more information like the CWE, add more interactions, and even use the ignore API from Snyk to create an ignore button.
You can find more information about the block builder (Block Kit) on the Slack website.
