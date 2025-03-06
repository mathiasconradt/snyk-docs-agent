When setting up the GitHub Server App, you can only implement one of the following scenarios:

One GitHub organization connected to one Snyk Organization
One GitHub organization connected to multiple Snyk Organizations


In Snyk's UI navigate to the integrations page and select the GitHub Server App tile.
Image with the GitHub Server App tile highlighted in Snyk's UI
Clicking on the tile opens a modal that allows you to enter the URL of your GitHub Server. Entering the URL of your GitHub Server instance will then redirect you to your GitHub instance, where you'll be able to create the app.
Integration model prompting the user for their GitHub Server's URL
Registration of the app on your GitHub instance
You are then asked to authorize the app to act on your user’s behalf. The app uses this information to check which GitHub organizations you are authorized to install the app in.
User authorization for the app
When the install screen in GitHub opens, you can select the GitHub organization where you wish to install the app.
Selection of the GitHub organization to install the app into
If the GitHub Server App is already installed in a GitHub organization on your GitHub instance, you can select that same GitHub organization during the integration process for a different Snyk Organization.
Connect another GitHub organization into a Snyk Organization
Specify whether you wish to install the app in all or a select number of the repositories belonging to the selected GitHub organization, then click Install & Authorize.
Install and authorize settings for the GitHub organization you are installing the GitHub Cloud App into

The GitHub Server App will lose access to Snyk if it is uninstalled from the GitHub organization. Should this happen you will be required to raise a support ticket before re-integrating with Snyk's GitHub Server App.
