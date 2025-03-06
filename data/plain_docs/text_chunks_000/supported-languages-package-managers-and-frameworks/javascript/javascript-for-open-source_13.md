nohoistis not supported for Yarn Workspaces.

To detect and scan all workspaces in your Yarn Project, use the CLI options identified for monorepos and workspaces, as well as this Yarn-specific opton:
--yarn-workspaces : Use instead of --all-projects to detect and scan only Yarn workspaces projects when a lockfile is present in the root. Other ecosystems will be ignored.
