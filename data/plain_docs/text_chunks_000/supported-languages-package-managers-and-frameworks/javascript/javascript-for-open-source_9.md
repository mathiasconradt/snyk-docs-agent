Yarn, npm, and pnpm support workspaces, to help manage monorepos containing multiple sub-projects.
Workspaces are supported in the Snyk CLI for the following CLI options:

--all-projects : Discover and scan all Yarn,  npm and pnpm workspaces projects, along with projects from other supported ecosystems. The root lock file is referenced when scanning the workspace projects.
--detection-depth : Specify how many sub-directory levels to search.
--strict-out-of-sync=false :  Allow testing out-of-sync lockfiles for packages in a  workspace. When this option is set to false , you can run Snyk tests with unsynchronized manifest and lock files without causing errors.
--policy-path : Specify the path to a policy used by Snyk during testing.
