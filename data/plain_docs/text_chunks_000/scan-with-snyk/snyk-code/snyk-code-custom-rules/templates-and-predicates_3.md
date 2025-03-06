Using the preceding taint template, you can start writing vulnerability detectors. However, Snyk Code provides predicates for various types of vulnerabilities. For example, if you want to detect SQL injection, this can be performed fully with the following query:
Taint<PRED:AnySource, PRED:SqliSanitizer, PRED:SqliSink>
Of course, this assumes that any of the sources in AnySource (see the hierarchy above) is one that a malicious actor may control. For example, not every application is set up in a way that users control environment variables or command line arguments. If you want to find only such SQL injections, you can run a query like:\
\
Taint<Or<PRED:AnySource, PRED:SourceResourceAccess>, PRED:SqliSanitizer, PRED:SqliSink>
In addition to SQL injection, Snyk Code can detect tens of other vulnerabilities and has corresponding predicates accessible from search and custom rules. The number of predicates is growing over time, and more rules are getting open to modifications.
