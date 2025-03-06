To add a Dockerfile for additional fix advice:

In the Projects tab, find your Project by using a filter and navigate to the Project page. 
On the Project page, navigate to Settings.
On the Settings page, under Dockerfile, click Configure Dockerfile and select the relevant Git repository from the dropdown.


Configure Dockerfile


On the page listing the available repositories, select the relevant repository which contains your Dockerfile. 
Under Path to your Dockerfile, add the relative path to your Dockerfile, in the following format: /path/dockerfile.

Add the path to your Dockerfile

Click Update your Dockerfile.

Snyk scans the Project again and provides relevant base image fix advice. You can see the fix advice on the Project page, under Recommendations for upgrading the base image.
The following information is displayed: Current image, Minor upgrades, Major Upgrades, Alternative upgrades, the number of vulnerabilities for each, and a severity ranking.
Recommendations for upgrading the base image
