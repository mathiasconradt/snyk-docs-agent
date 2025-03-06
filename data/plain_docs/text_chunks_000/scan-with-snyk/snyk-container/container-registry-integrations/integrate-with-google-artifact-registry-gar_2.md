Navigate to the Google Cloud Console Credentials page. 
Select the Google project for which you are creating credentials if it is not already selected.
Select the Create Credentials button and select Service Account.
Give the new service account a unique name and ID and select Create.
On the Service account permissions page, choose Select a role and Artifact Registry Reader. You must also add an additional role that has the resourcemanager.projects.list permission, such as Browser or Viewer.
After the account has been created, select the relevant account in the Service Accounts section.
In the Service account details page, under the Keys section, select Add Key and Create New Key.
Select JSON for the Key type and select Create.

The JSON key is generated for your project. Copy the entire contents of the JSON file for the next step: Configure integration for GAR.
