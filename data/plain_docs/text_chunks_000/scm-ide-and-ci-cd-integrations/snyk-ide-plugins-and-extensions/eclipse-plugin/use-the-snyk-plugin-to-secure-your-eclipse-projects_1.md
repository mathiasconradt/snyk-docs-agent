General
Net new issues can be activated in the dot menu of the Snyk View
To filter the displayed issues to only display the issues introduced in the working directory, net new issues scan can be activated. This requires a git repository to work:

First, we scan the git master or main branch, or any reference branch selected in the Snyk View.
Second, we scan the working directory
We calculate the difference between both and only display the difference
