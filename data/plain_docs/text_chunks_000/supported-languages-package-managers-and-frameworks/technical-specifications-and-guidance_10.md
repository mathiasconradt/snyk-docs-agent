Snyk scans your codebase following this sequence:

The source code is analyzed, generating an event graph. The event graph is similar to a code map that helps Snyk understand how different parts of the code are related. There are two node types, each node in the graph representing something that happens in the code. Some represent parts of the code, and others represent how the code is used.
Rules are run against the event graph to find matches. The rules act as a checklist of known vulnerabilities that Snyk looks for in the event graph.
If a match is found, Snyk looks for a vulnerability in the event graph, identifying where problems might be hiding in the code.

For more information, see Snyk Code AI Engine. For more information about Snyk Code language support, see Supported languages, package managers, and frameworks (Snyk Code).
