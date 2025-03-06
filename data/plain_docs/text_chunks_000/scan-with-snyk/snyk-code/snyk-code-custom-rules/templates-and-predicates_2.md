In many cases, you want to ensure that certain types of data have no way to flow to certain sensitive locations in the program. This is often done for security reasons, both to ensure compliance and correctness.
The first important element to query is sensitive data sources. Snyk has built in the following set of  hierarchical data sources that you can query:
AnySource

SourceServer
SourceCookie
SourceHttpParam
SourceRequestUrl
SourceHttpHeader
SourceWebForm
SourceHttpBody
SourceHttpFileUpload
SourceRpcApiParam
SourceNonServer
SourceResourceAccess
SourceDatabase
SourceFile
SourceArchive
SourceClientFramework


SourceLocalEnv
SourceCLI
SourceStdin
SourceEnvironmentVariable



The first category of sources (SourceServer) is defined for programs that implement servers. These sources are typically fully user-controllable. This means that a malicious user can use them to launch an attack against the application or that one needs to handle such data with additional care. For example, you may want to check that authentication is always performed or that some other property is enforced.
The non-server predicates also apply to programs that do not implement server functionality.\
Each of the predicates in the SourceServer category is returned by querying PRED:SourceServer or PRED:AnySource. Consider the following TypeScript code example:
```javascript
import  from 'express';
module.exports = function productReviews () {
 return (req: Request, res: Response, next: NextFunction) => {
   let user = req.signedCookies;
   doSomething(user);
   console.log('Some message ' + user);
 }
}
```
This implements a request handler for an express server. In this case, the code reads the user cookie and logs it on the console. This might be a security vulnerability and a compliance problem for many applications. The first capability of Snyk Code is that it can discover these cookie locations, and you can connect them to check a lot of properties about them. In this case, running a PRED:SourceCookie query will find the first line of the request handler.
You can now verify that cookies are handled correctly by the code. For example, you can check that cookies do not end up logged anywhere. You can try to use data flow or ForSameObject. In this case, report if the cookie is logged as part of some other object, string concatenation, or other simple transformation. 
To achieve this, there is a taint analysis done with the taint predicate. This takes the following shape: Taint< source, sanitizer, sink > . 
Source is the source of sensitive data, sanitizer gives code patterns that would transform the data to be non-sensitive, and sink is the location where the sensitive data should reach a report to be made. The report is then made at the sink location.
Now, consider finding places where the user is logged in. You can then use the following query:
Taint<PRED:SourceCookie, PRED:None, CallExpression<"log">>
Of course, one may want to say that if a cookie is hashed using the function hash123, then it is safe to be logged. Then, the query would look like:\
\
Taint<PRED:SourceCookie, CallExpression<"hash123">, CallExpression<"log">>
