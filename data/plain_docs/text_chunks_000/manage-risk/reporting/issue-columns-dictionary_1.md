Describes the main attributes of the issue.

COMPUTED FIXABILITY - Indicates whether the issue can be fixed based on the vulnerability remediation paths. For details, see Computed Fixability filters.
Fixable: There is a fix for all the identified issues, meaning that all detailed paths have remediation.
Partially fixable: The issue has upgradable paths, but not all detailed paths have remediation.
No supported fix: The issue has no upgradable paths.
HAS JIRA ISSUE(S) ASSIGNED - Displays truewhen at least one Jira issue is assigned, otherwise displays false.
INTRODUCTION CATEGORY - Categorizes how an issue was introduced:
Baseline Issue - issues identified right after the Project began to be monitored.
Preventable Issue - issues for which Snyk published the related problem at least seven days before detection.
Non Preventable Issue - issues that were created due to external factors such as a new vulnerability being published.
Other New Issue - issues for which Snyk cannot classify their preventability. For details, see Delineation of how risk is introduced.
ISSUE - A combination of:
Problem Title: Snyk vulnerability name.
Issue Type: indicates whether the issue is related to a vulnerability, license, or configuration.
ISSUE STATUS - Indicates whether the issue is open, resolved, or ignored.
JIRA ISSUES LIST - A list of all the attached Jira issue keys.
LATEST JIRA ISSUE - The latest attached Jira issue key with a link to the issue card in the project page.
PRODUCT NAME - Snyk product name.
SEVERITY - Indicates the issue severity according to the analysis by a specific Snyk product.
SCORE - A score based on an analysis model. Priority score is released in General Availability, while Risk Score is in Early Access. For details, see Priority Score vs Risk Score.
REACHABILITY - The reachability of the issue indicates whether the issue is related to functions that are being called by the application and thus has a greater risk of exploitability. Allowed values:
Reachable - A direct or indirect path was found from your application to the vulnerable code.
No path found - No path found from your application to the vulnerable code.
Not applicable - Reachability is not a relevant attribute for the specific issue.
