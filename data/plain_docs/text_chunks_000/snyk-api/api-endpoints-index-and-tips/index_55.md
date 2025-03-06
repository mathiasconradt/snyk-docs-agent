Note that the target.owner is case-sensitive.
For information on when and how you can use Import targets, see Git integration on the Import Projects page in the Enterprise implementation guide.
If a call to the Import targets endpoint fails, use Get import job details to help determine why. There are two types of failures:

The repository was rejected for processing, that is, HTTP status code 201 was not returned. This happens if there is an issue Snyk can see quickly for example:
The repository does not exist.
The repository is unreachable by Snyk because the token is invalid or does not have sufficient permissions; there is no default branch.
The repository was accepted for processing, that is, the user got back HTTP status code 201 and a url to poll, but no projects were detected or some failed. This may occur because:
There are no Snyk-supported manifests in this repository.
The repository is archived and the Snyk API calls to fetch files fail.
The individual project or manifest had issues during processing. In this case Snyk returns success: false with a message in the log.

The poll results return a message per manifest processed, either success: true or success: false.
More information: api-import Creating import targets data for import;\
api-import Kicking off an import
More information Import targets:\
Configure integrations (Enterprise implementation guide, Phase 2);\
Import Projects (Enterprise implementation guide, Phase 3);\
Tool: snyk-api-import\
api-import Creating import targets data for import\
api-import Kicking off an import\
Scenario:: Identify and import new repositories only\
Scenario: Detect and import new Projects in a repository into a target\
Scenario: Detect new Projects (files) in repositories and import them into a Target in Snyk on a regular basis\
Import fresh container images\
Manage code vulnerabilities (Use: Automate importing multiple repositories)\
Snyk Broker Code Agent
More information Get import job details: Scenario: Import fresh container images;\
Tool: snyk-api-import\
api-import Creating import targets data for import\
api-import Kicking off an import
