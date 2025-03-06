For projects using Git repositories, Snyk can filter the displayed issues to show only issues introduced in the working branch. 
To do this, Net New Issue Scanning must be enabled under Scan Configurations in the Extension Configuration.

First, scan the reference branch selected in the Snyk view, for example, git master or main.
Second,  scan the working branch.
Then calculate the difference between both and display only the difference

The following are the steps to choose ther reference branch:

Click the Project node to open the branch chooser dialog.
Choose the branch that is the reference against which new issues shall be calculated

After clicking on the Project branch, you can choose the reference branch.
Continue by running a scan on your working directory.
