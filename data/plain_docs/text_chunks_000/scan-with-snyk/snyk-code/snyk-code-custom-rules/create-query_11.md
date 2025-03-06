Similarly, to improve coverage, another query locates unmatched sinks by finding elements like the java.sql.Connection object in the WebServer class that are poised to receive data but lack incoming data flows, highlighting areas for potential gaps in library and framework coverage.
starlang
PRED:AnySink and not DataFlowsFrom<PRED:AnySource>
