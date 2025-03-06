Before testing your Open Source Project for vulnerabilities, with limited exceptions, you must build your Project. For details, see Open Source Projects that must be built before testing with the Snyk CLI.

Snyk builds a dependency graph and (dependencies tree) and then uses the vulnerability database to find vulnerabilities in any of the packages anywhere in that tree.

Only official releases are tracked. Commits, including into the default branch, are not identified unless included in an official release or tag.
In the case of Projects that have a package manager, this means a release of the package manager.
In the case of Go and Unmanaged scans (C/C++) this requires an official release or tag on the GitHub repo.
