It is common to have a phased rollout of Snyk features. Using PR checks as an example:

You may initially run Snyk tests and set them through your source control settings as optional checks. The results are displayed, but the developer is not blocked from merging the PR. 
Over time, as developers adapt to seeing these results and begin addressing the critical issues proactively, you can choose to start blocking PRs from being merged if there are any new High or Critical severity issues, or in the case of Snyk Open Source, if a fix is available. 

This phased rollout helps to decrease friction between your security and development teams.
