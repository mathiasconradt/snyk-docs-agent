When you choose to use a patch to fix a vulnerability, snyk is added as a dependency, and a .snyk file is created that contains the list of patches to apply.
The .snyk file contains the details of the patch for each individual path to the dependency, as it may appear in multiple locations in the node_modules, for example:
'npm:negotiator:20160616':
    - errorhandler > accepts > negotiator:
       patched: '2017-05-05T12:39:16.961Z'
    - negotiator: 
       patched: '2017-05-05T12:39:16.961Z'
