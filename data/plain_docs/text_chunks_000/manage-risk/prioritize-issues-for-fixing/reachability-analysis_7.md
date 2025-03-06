Snyk uses a combination of security expert analysis, program analysis, and various AI techniques to determine the reachability of a vulnerability, including these steps of analysis: 

Enriching vulnerabilities with the patches applied to fix them - as part of the Snyk vulnerability curation process, Snyk references the fix commit that the maintainer applied. 
Related elements analysis - Based on the commit fix, Snyk uses DeepCode AI program analysis to analyze the code elements and other parameters related to the vulnerability. 
Root Cause analysis - Snyk uses DeepCode AI and Natural language processing (NLP) techniques to automatically rank the related code elements by their chances of being the root cause of the vulnerability.   
Reachability analysis -  As issues are found in your application by a Snyk scan, the DeepCode program analysis engine is used to analyze the call graph of your application in relation to the call graph between the open-source dependencies used. A path between your application and a code element ranked as a root cause will yield a “Reachable” vulnerability. 
Security experts supervision - Snyk security experts will manually verify and mark elements as root causes in order to make the entire analysis more accurate over time

The following considerations related to false positives and false negatives apply to Reachable vulnerability analysis. 
Program analysis requires a trade-off between accurate results, minimizing false positives, and recall rates, by avoiding potentially exploitable vulnerabilities. 
To facilitate this trade-off, Snyk DeepCode analysis applies real-time decision-making to determine whether to under-approximate the set of reachable elements based on analysis of the likelihood that a reachable path will be found in a specific environment. 
For example, it is not always possible to give a precise answer when reflection programming is used. In such a case, neither returning a large set of false positives nor returning “Not reachable” will suffice. Snyk Deep Code analysis optimizes in order to retrieve the most accurate and complete result possible for a given code structure.
