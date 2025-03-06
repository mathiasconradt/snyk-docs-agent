Use the --exclude option when scanning with the CLI to omit scanning directories or files but not paths. This option excludes all directories or all files with specified names. For details, see the --exclude option in the CLI test command help.

If you import a Project through an SCM integration, add the exclusions, folders only, to the bottom of the import window; see Stage 2: Import Project in Git repositories deployment recommendations.\
Exclude folders
* You cannot use an exclude block in a .snyk file for Open Source scans except for unmanaged scans. For details, see Ignore files or folders using glob expression - Snyk Code and unmanagedonly.
