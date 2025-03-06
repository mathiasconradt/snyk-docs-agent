Syntax to use to exclude files and directories from Snyk Code testing
Use the following syntax to exclude files and directories by using the .snyk file:
# Snyk (https://snyk.io) policy file
---
exclude:
    global:
        # Exclude a single file. For example, - test.spec.js
        - file_name.ext
        # Exclude a single directory. For example, - src/lib
        - source/directory_name
        # Exclude any file with a specific extension in the specific directory. For example, - tests/.js
        - directory_name/.ext
        # Exclude files with a specific ending in any directory. For example, - “*.spec.js”
        - "*.ending.ext"
        # Exclude files in directories that have the same name with a different ending, like “test” and “tests”. The last character before the question mark is optional. For example, - tests?/
        - directory_name?/
        # Exclude all files and directories located within any specified folder within your Project. For example, directory_name/** matches and excludes all contents under any directory named directory_name. It is not constrained to the root level or the location of the .snyk file.
        - directory_name/**


You can use global or code. Either will exclude the specified directories and files from Snyk code tests. code applies only to Snyk Code analysis. global currently applies only to analysis using Snyk Code but may apply to other products in the future.
