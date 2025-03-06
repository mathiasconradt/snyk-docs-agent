See all the sources and sinks in the source code to understand every location where data can flow from or to. This analysis is conducted regardless of the presence of data flows, allowing users to assess coverage comprehensively.
This mode is often used as an investigatory tool to gain deeper insights into the code stack and to comprehend where data originates and terminates within the application.
To initiate this analysis, use the AnySource or AnySink predicates, which encompass all Snyk-known sources and sinks, respectively.
javascript
PRED:AnySource
This query identifies and highlights every known source within the code being analyzed.
PRED:AnySink
Similarly, this query identifies and highlights every known sink within the code, providing a complete view of potential data endpoints.
