Why do ignores in the .snyk file in the root directory of my monorepo apply to all Projects when I scan with the CLI but not when I import using my SCM?
For SCM scanning, the .snyk file must be present in each relevant subdirectory. See Monorepos and complex Project considerations with the .snyk file.\
