The snyk test command tests the first manifest it can find and performs a test on that singular entry point. To have Snyk analyze all manifests in the directory, use the following options:

--all-projects: This option detects and scans all Yarn and other Projects in this directory.
--yarn-workspaces: For Yarn Workspaces use the --all-projects flag to test and monitor your packages with other package managers or Yarn workspaces or use --yarn-workspaces to specifically scan Yarn Workspaces Projects only.


If you are using a package manager that requires options, it’s suggested to target individually with --file=
