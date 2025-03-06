Dependency resolution
Snyk applies the versions in the BOM dependencyManagement lookup to any dependencies declared in Project POMs that import it as a parent.
When Snyk scans the BOM files, the dependencyManagement contents are not considered dependencies of that file. These are only lookups.
The following explains how Snyk analyzes and treats each of the previous example files.

BOM file - Snyk does not create a Snyk Project for this file because it has no dependencies.
Project POM - Snyk creates a Project with a single dependency of log4j, with v1.2.12. Snyk applies the rules from the parent BOM to identify the correct version for log4j. The dependency commons-logging is not included, as it is not directly declared in the Project POM.


If a BOM has direct dependencies outsidedependencyManagement, then Snyk creates a Project for that BOM.
