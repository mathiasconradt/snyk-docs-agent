exclude:
 global:
   - 
   - 
```
For example:
```yaml
Snyk (https://snyk.io) policy file
exclude:
 global:
   - todolist-goof/** 
```
3. From the Snyk Web UI, import your repository in one of the following ways:


If the repository was already imported to Snyk, retest the repository as follows:
On the Projects page, click the Code analysis Project of the repository. Then, on the Code Analysis page, click Retest now.


Retest now option

If the repository was not imported yet to Snyk, import the repository.

Your repository is imported to Snyk, without the directories and/or files you selected to exclude.
