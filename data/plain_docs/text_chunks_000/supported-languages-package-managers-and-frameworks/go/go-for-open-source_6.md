To build the most accurate dependency tree for Go Modules Projects imported from Git, Snyk needs to access all the files in your repository.
This enables Snyk to see the import statements in your .go source files, and determine which specific packages are used in your application. Without this access, Snyk will include all packages from the modules listed in your go.mod file.
To enable full source code analysis, adjust your settings as follows:

Log in to your account and select your Group and Organization.
Navigate to Settings, then Languages.
Select Edit settings for Go.
Toggle full source code analysis on or off.

Enable full source code analysis
For more details on levels of access to your repository required by different Snyk features, see How Snyk handles your data.
