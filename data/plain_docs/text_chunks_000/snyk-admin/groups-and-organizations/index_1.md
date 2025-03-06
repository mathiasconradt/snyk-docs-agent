Snyk has a hierarchy that allows you to control access to Snyk scanning and features. This varies for Free, Team, and Enterprise plans.
The Snyk hierarchy for Enterprise plans
The Snyk hierarchy for Free and Team plans.

Account: Users must log in to their Snyk account to scan and view or modify any settings and scan
Tenants: A Tenant encompasses the entire Snyk workspace of your company, team, and individual users. You have one Tenant that encompasses all your Snyk work items: Groups, Organizations, Targets, Projects, and all their adjacent entities, for example, Snyk features, Tags, Collections, and so on.
Groups: A Group encompasses your entire base of Snyk users. Large companies may have multiple Groups with multiple Organizations. Enterprise customers have at least one Snyk Group.
Organizations: An Organization represents a specific area, such as a team, in your business. Organizations can contain multiple Projects.
Targets: A Target represents the external resource that Snyk scans, like a repository. One Target can relate to multiple Projects. For example, a Target https://github.com/examplesnyk/example contains the Projects package.json and Dockerfile.
Projects: A Project is established based on the item that Snyk scans for issues, such as a manifest file. Each Project shows the results of scans. You can configure your Projects to define how to scan for issues in that Project.
