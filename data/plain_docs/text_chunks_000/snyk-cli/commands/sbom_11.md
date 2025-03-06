Can be used with --all-projects to indicate directory names and file names to exclude. Must be comma-separated.
Example: $ snyk sbom --all-projects --exclude=dir1,file2
This will exclude any directories named dir1 and file2 when scanning for project manifest files.
--exclude=dir1 will find both ./dir1, and ./src/dir1.\
However, --exclude=./src/dir1 will result in an error because it includes a path.
