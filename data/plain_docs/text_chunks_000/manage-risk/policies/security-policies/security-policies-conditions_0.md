A condition is a variable on which to set a rule.
After you select a condition category, you are prompted to select Includes or Does not include and the desired condition, for example, Mature, CWE-1234. 
Security policies are applicable to Snyk Open Source and Snyk Container Projects.
You can stack multiple conditions in the same rule using the AND function.
Condition categoryCondition definitions and variablesExploit MaturityMatches all issues that contain a specified exploit maturity value. When multiple values are selected, the condition will apply to all issues containing any of the selected values. Values include Mature, Proof of Concept, No known exploit, and No data available.CWEMatches all issues that contain a specified CWE. Supports multiple CWEs.CVEMatches all issues that contain a specified CVE. Supports multiple CVEs.Snyk IDMatches all issues that contain a specified Snyk ID. Supports multiple Snyk IDs. Not every issue has a CVE, so this is a good way to specify those.
