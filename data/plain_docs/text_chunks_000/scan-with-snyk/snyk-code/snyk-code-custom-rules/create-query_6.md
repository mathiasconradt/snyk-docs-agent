Recreate a Snyk rule and add a source to the current Snyk known vulnerable source list because they are not being taken into account in the scans, resulting in missed vulnerabilities. 
Like the Net new data flow rule, the Taint data flow template is used with an Or operator. Operators are available to create logical statements for your queries, such as Or or And.
Run the data flow rule using both the Snyk known sources but also a custom source called SourceFoo[^1].
javascript
Taint<Or<PRED:AnySource,"SourceFoo">,PRED:XssSanitizer,PRED:XssSink>
With this query, you look for the data flow that originates in a Snyk known source OR “SourceFoo” . A source unknown to Snyk ends up in a known vulnerable cross-site scripting (XSS) Sink and does not pass through a known cross-site scripting (XSS) Sanitizer. Therefore, the assumption is that the data is tainted.
Any statement that uses an operator will be written within angle brackets  < statement >.
