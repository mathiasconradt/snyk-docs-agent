Starting with version 2.10.0, it is possible to see only newly introduced issues.
This functionality reduces noise and allows developers to focus on current changes only. Developers can prevent issues early, thus unlocking their CI/CD pipeline and speeding up delivery.
The logic uses a local Git repository and shows the difference between current findings minus those in a base branch.
This can be configured using scan configuration settings. Net New Issues is turned off by default, so you must take manual action to turn it on.
After this feature is enabled, Snyk only reports the delta findings. 
For newly created feature branches, there will be no reported issues. That is an intended state, that developers would aim for; see the screen image that follows:
Successful state. No Net New issues found
The base branch is usually automatically determined for each Git repository. 
In advanced cases, developers may change their base branch by following these steps (see the screen image that follows): 

Click on the top-level node in the Issues tree
Use dropdown selection to choose any branch 
Click OK to save the selection

Change base branch for calculation Net New issues
