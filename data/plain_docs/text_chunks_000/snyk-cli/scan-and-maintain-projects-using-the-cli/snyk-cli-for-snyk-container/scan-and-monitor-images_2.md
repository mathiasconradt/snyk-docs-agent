Snyk Container also allows you to monitor images. This provides the following advantages:

Snyk alerts you if new vulnerabilities that affect your image are disclosed without having to retest your image locally.
Snyk interactively filters the results and explores the list of vulnerabilities in your web browser.
You can share results on Snyk with other members of your team.

To learn more about container security, see The importance of Container Monitoring.
Users on paid plans can also access aggregate reports of vulnerabilities across all of their Projects.
To monitor an image, run the container monitor command:
snyk container monitor <repository>:<tag>
This command:

Downloads the image if it is not already available locally in your Docker daemon.
Determines the software installed in the image.
Sends the bill of materials to the Snyk service.
Returns a link to the Snyk service, where you can see the results.

Recommendatios for upgrading the base image
