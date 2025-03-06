For this example, a JavaScript code snippet is used. You can copy it in the snippet window and select JavaScript.
```javascript
const express = require('express');
const bodyParser = require('body-parser');
const  = require('pg');
const fs = require('fs');
const app = express();
app.use(bodyParser.json());
const client = new Client({
   host: 'localhost',
   user: 'youruser',
   password: 'yourpassword',
   database: 'yourdbname'
});
async function connectDb(client) {
   await client.connect();
}
async function insertSubmission(client, email, name) {
   await client.query(INSERT INTO submissions(email, name) VALUES($, $));
}
function logSubmission(email, name) {
   const logMessage = New submission: Email=$, Name=$\n;
   fs.appendFileSync('myapp.log', logMessage);
}
app.post('/signup', async (req, res) => {
   try {
       const  = req.body;
       await insertSubmission(client, email, name);
       logSubmission(email, name);
       res.send();
   } catch (err) {
       console.error(err);
       res.status(500).send();
   }
});
connectDb(client).then(() => {
   app.listen(3000, () => console.log('Server is running on port 3000'));
});
```
Snyk Code knows a list of possible sources of external data in the predicate PRED:AnySource. The following query shows you that app.post() is identified. 
Query PRED:SqliSinks shows you that query() is part of that list of SQL injection sinks. The query engine comes with many different predicates for various source, sink, and sanitizer types. Check the list of predicates to see them all.
To check whether the data flows into a SQL injection sink, use the following: DataFlowsInto<PRED:SqliSink>. It shows you that in the program, data from the req parameter flow into query() taking several turns.
If the data flow is also going through a sanitizer, you can use a specialized template. Change the query to ​​Taint<PRED:AnySource, PRED:SqliSanitizer, PRED:SqliSink>

There is nothing language-specific in the query. It would work on similar code in other languages.
