Enter the following queries in the query window and press Run Query to see the results.

Select body by using the query: “body” 


This query does not select the Body with a capital B. The query language is case-sensitive.


Add Body to the findings so the query becomes Or<”body”,”Body”>.
You can achieve the same outcome using a regex ~"body|Body" or ~"[Bb]ody"
Do something more complex regex and query: \
   ~"[a-z0-9!#$%&'*+/=?^_~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?"\
   It matches the hardcoded email address.

Syntactical query example
