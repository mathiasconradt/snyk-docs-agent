Review the package.json manifest file in your cloned goof application, to see multiple direct dependencies listed:
List of dependencies in the package.json file

These direct dependencies can also have additional transitive dependencies; libraries that they depend on.

To add the dependency:

Add the tinymce 4.1.0 library at the bottom of the dependencies list:

{
   "name": "goof",
   ...
   }
   "dependencies" {
    ...
   "typeorm": "^0.2.24",
   "tinymce": "4.1.0"
   },
   ...

remember to place a comma after the previous dependency.



Create a lock file for the Node application:
npm install --package-lock



if this file already exists, run rm package-lock.json to remove it.
