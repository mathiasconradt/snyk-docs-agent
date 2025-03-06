An action defines what you want to happen when the security policy conditions are matched.

You cannot stack multiple actions in the same rule. To have multiple actions with a rule, create a new rule block with the same conditions, and specify a different action.

These are the actions that can currently be applied:
ActionDefinitionsChange severity to…Changes the severity of whatever issues match the conditions. This can be set to Low, Medium, High, or Critical.Issues with a changed severity have their priority score updated to reflect the new severity. A note appears on the issue card indicating that the severity of the issue has been changed by a policy. The severity icon will also be "stacked," showing the original severity behind the new one.Ignore current and future instancesIgnore all vulnerabilities that match the conditions. For example, ignore all issues that have no known exploits in Projects with a business criticality attribute of low.After an ignore policy is applied, ignores will occur every time the relevant Project is re-scanned, with ignored issues marked as ignored by Security Policy.When setting the action, you can select won't fix and not vulnerable as ignore types, and add a reason, which appears with the ignore on the issue card Policy-based ignores have the same behavior as issues that are manually ignored. As with manual ignores, automatic PRs are not raised on issues ignored by a security policy or included in the issue count in reporting.

Security policies are applicable to Snyk Open Source and Snyk Container Projects.
