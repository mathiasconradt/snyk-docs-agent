Recreate a Snyk rule and remove a source from the current Snyk known vulnerable sources because this source is not vulnerable within the context of an application. 
Like the Net new data flow and Extend a data flow rules, the Taint data flow template is used with an And operator. A declarative negative statement (Not) is used to indicate the false case of the statement and not the true case.
Run the data flow rule using the Snyk known sources, removing SnykSource from the results. In this example, SnykSource is a Snyk-known source that is used within the regular general AnySource predicate.
javascript
Taint<And<PRED:AnySource,Not<PRED:”SnykSource”>>,PRED:XssSanitizer,PRED:XssSink>
With this query, you look for the data flow that originates in a known Snyk source but remove results that come from SnykSource that end up in a known vulnerable cross-site scripting (XSS) Sink and do not pass through a known cross-site scripting (XSS) Sanitizer. Therefore, the assumption is that the data is tainted.
