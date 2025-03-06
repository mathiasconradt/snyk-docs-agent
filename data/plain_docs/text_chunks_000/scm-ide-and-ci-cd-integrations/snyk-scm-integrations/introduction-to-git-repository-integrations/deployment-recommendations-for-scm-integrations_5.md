Navigate to the Projects page in the Snyk UI, select Add projects, select the repos to import to Snyk, and click Add selected repositories.

Snyk starts scanning the selected repos for dependency files (for example, package.json) in the entire directory tree and imports these files as Projects.
Snyk evaluates root folders and any custom file locations defined. If no manifest or configuration files are found, Snyk alerts you that no files can be imported.
Snyk detects the manifest files (Projects), tests them, then displays the results.\
  Imported Projects appear underneath the repository name.\
  After a Project is imported, it is continuously checked for vulnerabilities.


To confirm that a Project was imported, go to the Add project import page for the integration. Imported Projects are indicated by a ✔ next to the repository name.

For details, see Import a Project.
