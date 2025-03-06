For Snyk Code, the ignore functionality may capture a wider range of issues than other products.
Snyk Code transforms the input code into an intermediate representation, which captures the flow of code but abstracts away some details.
Snyk Code uses this intermediate representation to recognize the same issue even when you refactor your code or rename a variable.
Thus when you ignore an issue, Snyk Code can also ignore that issue if it occurs in multiple places in your code, even with minor code changes. This avoids generating multiple duplicate reports for pieces of code with the same ignored issue.
As an example, the following two code snippets, denote the same issue, as the developer only renamed the variables:
var fs = require('fs');
var logFileName = req.query.file || 'standard_log.log';
var logfile = fs.readFile(logFileName, "utf8", function(err, data) {...
var filesystem = require('fs');
var generalLogFileName = req.query.file || 'standard_log.log'; 
var handleLogFile = filesystem.readFile(generalLogFileName, "utf8", function(err, data) {...
