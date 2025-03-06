Scenario:\
The legal team in your company requires strict license compliance controls for business-critical front-end applications but is less concerned about internal development Projects.
To meet this requirement, first add the Critical, Production, and Frontend attributes to the Snyk Projects you want this policy to apply to:
Add relevant attributes to a Project from the Issues tab
Next, create a new license policy and apply the policy to those attributes:
Apply license policy to selected attributes

In the policy itself, a high severity can be applied to any copyleft license identified in Projects, such as the GPL-3.0 and AGPL-3.0 licenses. \
When you create license policies, Snyk recommends that you describe why Snyk will fail the test. Thus, for example, if a build fails due to the GPL license, developers can see the explanation, and they will know what action to take. See Create a license policy and rules for details.

This policy is now assigned to all Projects with the selected attributes applied and takes effect the next time Snyk scans those Projects.
See License policies for more details.
