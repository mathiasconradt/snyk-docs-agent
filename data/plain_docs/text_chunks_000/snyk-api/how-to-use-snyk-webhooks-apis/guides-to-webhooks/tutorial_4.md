New issues are provided as a list of objects, unfortunately, Zapier doesn't understand that format well, rather it likes a list of strings. So We need to format newIssues to string[].
Let's create one more JS Action:
"Code by Zapier" → "Run Javascript", and paste the following snippet:
``
function formatIssue() {
  return
$
  Vulnerability in $ ($). $ severity.
`;
}
try {
  const  = JSON.parse(inputData.body);
output = ;
} catch (err) {
  output = ;
}
```
