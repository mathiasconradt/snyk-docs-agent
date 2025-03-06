To use the GitHub Server App with Universal Broker you need to create your own GitHub App on your GitHub Server instance. You can do this by using the GITHUB-SERVER-URL that pre-defines all the required permissions for Snyk services:
}/settings/apps/new?name=Snyk&description=Snyk%20helps%20you%20develop%20fast%20while%20staying%20secure%20by%20finding%20and%20automatically%20fixing%20security%20issues%20in%20your%20code%2C%20open%20source%20dependencies%2C%20containers%2C%20and%20infrastructure%20as%20code%20-%20all%20powered%20by%20Snyk%E2%80%99s%20security%20intelligence.&url=https%3A%2F%2Fgithub.com%2Fapps%2Fsnyk-io&public=false&webhook_active=true&webhook_url=}%2Fapi%2Fhidden%2Fscm-apps%2Fapi%2Fgithub-app%2Fwebhook&checks=write&statuses=write&contents=write&metadata=read&pull_requests=write&repository_hooks=write&members=read&events[]=repository
Replace the following in the URL above:

}: Replace this with the base URL of your GitHub Server instance.
}: Replace this with the tenacy of your Snyk account. This value needs to be URL encoded; the most common are listed below:
Snyk US: https%3A%2F%2Fapp.snyk.io
Snyk EU: https%3A%2F%2Fapp.eu.snyk.io
Snyk AU: https%3A%2F%2Fapp.au.snyk.io
Snyk AWS US: https%3A%2F%2Fapp.us.snyk.io

After the values are replaced navigate to that URL. This will take you to the app creation screen in your GitHub Server instance with all the required details pre-filled. Afterwards scroll to the end of the page and click on the Create GitHub App button, ensuring that the Any account radio button is selected.
Create GitHub App account setting selection

On creation of your GitHub Server App you will be presented with aClientId and AppId - store these safely as these are your app's credentials and should be treated as secrets.

After creating your GitHub Server App you'll be presented with a banner prompting you to create a private key. Please click on it and create a private key for you app.
Registration success message with a link for private key generation
Generating a private key will initiate a download of a .pem file; this should also be treated as a secret and kept safe.
Your GitHub Server App is now ready to be installed against repositories in your Snyk organisation. You can scroll to the top of the same page and select Install App from the left-hand panel. Choose the newly created app and click on the Install button to the right.
Install the GitHub App in your repositories
Install the GitHub App in your selected repositories
Choose where you want to install the app in your GitHub organisation. It can be installed against specific repositories, or all of them in your GitHub organisation.

If you select to install the app on a subset of repositories in your GitHub organisation, the app will only work in those repositories. You can edit where the app is installed by returning to this screen at a later date if you want to add it to additional repositories

On installation of the app you will receive an InstallationID. These are the final numbers in the URL of the page. Make a note of that number, as you will need it to setup a broker connection.
