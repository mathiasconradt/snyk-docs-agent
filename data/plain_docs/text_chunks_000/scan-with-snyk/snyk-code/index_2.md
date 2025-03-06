Snyk Code is powered by a semantic, AI-based analysis engine and can analyze the following in your code:

API usage: Identifies multiple potential issues, including API misuses, null dereferences, and type mismatches, by modeling the use of memory in variables and references. This mechanism can also identify the use of insecure functions.
Coding issues: Finds problems such as dead code, branches that are predefined, and branches having the same code on each side.
Control flow: Identifies null dereference or race conditions by modeling each possible control flow in the application.
Data flow: Follows the flow of data within the application from the source to the sink. Combined with AI-based learning of external insecure data sources, data sinks, and sanitation functions, this enables a strong taint analysis.
Hardcoded secrets: Hardcoded secrets detection rules are invoked during SAST scans but do not act as a standalone secrets scanning tool, as this is done through our partnership with third-party tools. See our Snyk Learn lessons on GitGuardian and Nightfall AI.

Hardcoded secret found

Point-to analysis: Identifies multiple potential issues, including buffer overruns, null dereferences, and type mismatches, by modeling memory use in variables and references.
Type inference: Determines the initial type and its changes. This is of special interest for dynamically typed languages.
Value ranges: Infers possible values for variables used to call functions to track off-by-one errors in arrays, division-by-zero errors, and null dereferences.
