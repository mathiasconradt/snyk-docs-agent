You can save custom rules from useful queries and add metadata. The metadata is used to create YAML formatted code. Export the YAML content as a rule in the .snyk file of the relevant repository to run it alongside Snyk's in-house rules in future scans.

Log in to the Snyk Web UI and go to your Group and Organization.
Go to Custom rules.
Write your query in the Code query panel.
(Optional) Run a query on a repository or a code snippet.
Configure the metadata:
Name: This is shown whenever the query finds a result.
Severity: Set the severity of the result based on Snyk security levels. Snyk Code uses only three severity levels: Low, Medium and High.
Description: Add a description of the result and why it has surfaced.
CWE: Link relevant CWEs.
Fix Analysis: Describe how the developers should address the vulnerability. You could structure the fix as general guidance or based on your Organization's best practices.

Adding metadata to a saved custom rule

Click Generate custom rule to create YAML-formatted code. 
Export the query as a rule by copying the YAML content to the .snyk file in the relevant repository. 

Exporting the query as a rule in the .snyk file
