Let's create another action, to parse a payload from string to something Zapier can understand.
We need to create the same JS Action:
"Code by Zapier" → "Run Javascript", with the following field mapping:

And the following JS snippet:
try {
  output = JSON.parse(inputData.body);
} catch (err) {
  output = ;
}
That will parse a request payload and map it to Zap's variables.
