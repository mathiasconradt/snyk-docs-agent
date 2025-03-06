Profile name (mandatory): Input your integration profile name. 
Organizations (mandatory): Input the names of all the relevant GitHub organizations.


If you have changed the name of your GitHub organization, copy the new name from the GitHub URL and paste it into the GitHub Organizations field in the Snyk Essentials Integration Hub.



Access Token (mandatory): Create your GitHub PAT from your GitHub Organization. 


Generate your GitHub PAT by following the instructions in the Generate a Personal access token from your GitHub settings section. 


Authorize your GitHub PAT if you have configured SAML SSO. See the How to authorize your Personal Access Token and enable SSO page for more details.


Broker Token (mandatory): Create and add your Broker token if you use Snyk Broker.

Generate your Broker token by following the instructions from the Obtain your Broker token for Snyk Broker page. 
Copy and paste the Broker token on the integration setup menu from the Integration Hub.
API URL (mandatory) - Input the API URL. The default URL is https://api.github.com.
Pull personal repositories (optional): Enable the option if you only want to pull the repositories you own.
Add Backstage Catalog (optional): If you want to add your Backstage catalog, follow the instructions from the Backstage file for SCM Integrations page.


If you enabled the Pull personal repositories option, only your personal repositories are pulled, not the public ones. 
If you want to pull data from both organization and personal repositories, then you must set up separate profiles.
