The Snyk GitHub Server App improves on many features compared to the Snyk GitHub Enterprise integration, including role-based granular access control, increased API rate limits, and the creation of an entry point for expanded and enhanced developer experiences.

RBAC (Role-Based Access Control) Compliance: With the GitHub Server App, the access control mechanism is decoupled from individual user accounts. Instead, it is associated with the app entity itself. This separation allows for better management and enforcement of RBAC policies, as access control is handled at the application level rather than being tied to individual user accounts.
Granular access control: The GitHub Server App allows for fine-grained control over access permissions at the repository level.
Increased API rate limit: The GitHub Server App provides higher rate limits, allowing Snyk to make a larger number of API requests. This increased limit will assist in handling large-scale use cases, such as monorepos with a large number of Projects, GitHub organizations with a large number of repositories, and more.
Enabler for an enhanced developer experience:
Pull request checks: The Checks tab experience in GitHub is exclusively accessible through the GitHub Cloud App, enabling an SCM native experience as part of potential future PR check workflow improvements.
Fix and upgrade pull requests: Pull requests initiated by Snyk are performed directly by the GitHub App rather than a service account.
