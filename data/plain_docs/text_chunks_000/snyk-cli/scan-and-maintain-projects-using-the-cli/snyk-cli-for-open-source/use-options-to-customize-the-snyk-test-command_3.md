Many package managers allow for separately calling out dependencies that are to be used only in a development or test context, that is, not eventually shipped to production. By default, Snyk does not scan these dependencies. If you want your dev dependencies to be included in the scan, use the --dev option:
$ snyk test --dev
