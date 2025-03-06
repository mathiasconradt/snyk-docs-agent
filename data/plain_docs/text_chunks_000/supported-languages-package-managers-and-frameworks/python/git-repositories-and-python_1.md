To scan your Projects, you must ensure your repository contains the supported manifest files
Pip and Git repositories

Private PyPI repos and file://  URLs are not supported.
--index-url, -i, file:// and regular URLs in requirements.txt files are removed before the file is scanned. Any remaining dependencies should be included in the scan as normal.


Python packages that are operating system specific and not supported by Linux may not be compatible with Snyk SCM scans, leading to errors.


Projects with downloaded dependencies totalling more than 10GB are not supported.

To scan Pip Projects, Snyk analyzes your requirements.txt files using native pip tooling in an isolated Linux environment.
Pip Projects scanned using the Git integration will be given the same name as the directory where they are located. 
Snyk imports any file that follows the **/*req*.txt pattern. This can help if you have renamed the requirements.txt files, for example, to requirements-dev.txt.
Snyk also looks for files using the **/requirements/*.txt pattern. This can help if you have placed your files in a requirements folder, for example, requirements/requirements.txt.
If you are using a package manager that creates different manifest file formats from requirements.txt, then you may be able to convert or export the manifest file to the requirements.txt format.
An example follows of how dephell is used to convert from Conda environments.yml to a requirements.txt.
python
dephell deps convert --from=conda --to=requirements.txt
