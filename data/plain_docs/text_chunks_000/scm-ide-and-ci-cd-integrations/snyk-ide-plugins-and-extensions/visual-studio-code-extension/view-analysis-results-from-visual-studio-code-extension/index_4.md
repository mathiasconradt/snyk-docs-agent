Starting with version 2.19.0, it is possible to see only newly introduced issues.
This functionality reduces noise and allows developers to focus on current changes only. Developers may prevent issues early, thus unlocking their CI/CD pipeline and speeding up delivery.
The logic uses a local Git repository and shows the difference between current findings minus those in a base branch.
This can be configured using plugin settings. It is turned off by default, so to turn it on, you must take manual action.
After this feature is enabled, Snyk reports only the delta findings. 
For the newly created feature branches, there will be no reported issues. That is an intended state that developers would aim for, as shown in the following screen image.
Successful state. No Net New issues found. 
The base branch is usually automatically determined for each Git repository. 
In advanced cases, developers may change their base branch by following these steps (see the screen image that follows): 

Click on the top level node in the Issues tree
Use text input to specify any branch name
Click Enter to save the selection

Change base branch for calculation Net New issues
