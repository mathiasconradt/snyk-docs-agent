Sometimes your Projects contain different kinds of files, and you want to scan only files with a specific extension, excluding everything else. The following command scans only files with a .tf extension contained in the current working directory and its subdirectories. Files that do not have a .tf extension will not be scanned.
find . -type file -name '*.tf' | xargs snyk iac test
