When setting up the GitHub Cloud App, you can only implement one of the following scenarios:

One GitHub organization connected to one Snyk Organization
One GitHub organization connected to multiple Snyk Organizations


Log in to your Snyk account and navigate to the Integrations section in the Snyk Organization where you would like to set up the GitHub Cloud App.
Select the GitHub Cloud App tile.
GitHub Cloud App tile on the Integrations page
In the confirmation modal, select Configure GitHub Cloud App.
Configuration notice for the GitHub Cloud App
You are then asked to authorize the app to act on your user’s behalf. The app uses this information to check which GitHub organizations you are authorized to install the app in.
User authorization for the app
When the install screen in GitHub opens, you can select the GitHub organization where you wish to install the app.
Selection of the GitHub organization to install the app into
If the GitHub Cloud App is already installed in a GitHub organization, you can select that same GitHub organization during the integration process for a different Snyk Organization.
Connect another GitHub organization into a Snyk Organization
Specify whether you wish to install the app in all of the repositories belonging to the selected GitHub organization, or you want to install the app in a select number of repositories belonging to a GitHub organization; then click Install & Authorize.
Install and authorize settings for the GitHub organization you are installing the GitHub Cloud App into

The GitHub Cloud App will lose access to Snyk if it is uninstalled from the GitHub organization or if the repositories to which the app instance has access are edited.
