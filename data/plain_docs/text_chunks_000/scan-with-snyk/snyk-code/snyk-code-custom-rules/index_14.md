A predicate matches program elements based on some predefined condition. The main advantage of predicates is that you can use them to leverage the existing Snyk Code knowledge base. For example, if you need to find all program locations where an HTTP server handles cookies, you can use the predefined predicate PRED:SourceCookie. 
Similarly, there is a predicate PRED:SqliSink for matching all program locations where SQL queries are handled. To support discovering all available predicates, custom rules provide autocompletion capabilities. There are two special predicates PRED:Any and PRED:None that match all program elements or no program elements, respectively.

When multiple matches are provided in a sequence, the result is a combination of all of them. 
For example, using a query like: PRED:SourceCookie ~"get.*" will only match on methods that are both returning cookies and have a name that starts with get (logical AND of the two conditions that match elements).
