Can be used with --all-projects and --yarn-workspaces to indicate directory names and file names to exclude. Must be comma-separated, and cannot include a path.
Example: $ snyk test --all-projects --exclude=dir1,file2
This will exclude any directories and files named dir1 and file2 when scanning for project manifest files such as: ./dir1, ./src/dir1, ./file2, ./src/file2 and so on.
--exclude=dir1 will find both ./dir1, and ./src/dir1.\
However, --exclude=./src/dir1 will result in an error because it includes a path.
