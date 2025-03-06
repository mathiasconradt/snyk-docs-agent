The file is expected to have a required targets top-level key, which is an array of import targets.
{
  targets: [
    ,
    
  ],
}
Each import target has the following keys:
```
{
  // required
  "orgId": "",
  "integrationId": <"public_snyk_integration_id>",
  "target":  // the identifier of where the projects can be found (for example branch, repo name and owner for Github)
// optional
  "files": [  , ],
  "exclusionGlobs": "fixtures, tests, tests, node_modules",
}
```

orgId - Can be found on your Organization settings page.
integrationId - Can be found in the Integrations menu for each SCM on your Organization settings page.
target, files, exclusionGlobs - See the Snyk Import API documentation for more information.
exclusionGlobs - Comma-separated list of up to ten folder names to exclude from scanning (each folder name must not exceed 100 characters). If not specified, defaults to "fixtures, tests, tests, node_modules". If an empty string is provided, no folders will be excluded.
files - An object array. Each path must be the full relative path to the file from the root of the Target. Only those files found at that location will be imported.

Note that for a repository that may have 200+ manifest files, Snyk recommends that you split the import into multiple imports by targeting specific files. Importing hundreds of files at once from one repository can cause the import to result in some errors or failures.
Splitting the import to import some files or some folders only will benefit from the re-tries and produce a smaller load on the source control management system being used. Populate the files property to accomplish this in the import JSON.
If you have any tests or fixtures that should be ignored, set the exclusionGLobs property:

a comma-separated list of up to ten folder names to exclude from scanning. If not specified, it defaults to "fixtures, tests, tests, node_modules". If an empty string is provided, no folders will be excluded
