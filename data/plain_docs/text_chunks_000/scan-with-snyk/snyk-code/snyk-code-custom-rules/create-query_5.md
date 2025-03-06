Create a new rule because Snyk is not aware of the proprietary source built in-house, resulting in missed findings.
Use a data flow template known as Taint when creating a data flow query. 
javascript
Taint<PRED:"SourceFoo",PRED:XssSanitizer,PRED:XssSink>
You can configure the following parameters:

Source: The first parameter indicates where the data flow starts.
Sanitizer: The second parameter indicates a known sanitizer that would sanitize the data, resulting in the data's not being tainted
Sink: The third parameter indicating where the data flow ends

Custom predicates are indicated by writing their names within brackets. In this scenario, the custom method is called SourceFoo.
With this query, you can look for the data flow that originates in SourceFoo. A source unknown to Snyk ends up in a known vulnerable cross-site scripting (XSS) Sink and does not pass through a known cross-site scripting (XSS) Sanitizer. Therefore, the assumption is that the data is tainted.
