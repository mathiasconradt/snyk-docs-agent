Go to the Google Cloud Platform Console Credentials page, select the Project that you want to integrate with, and then select setting up a new service account key.
From the view that opens choose the service account from the dropdown list that you created for this integration and configure a new key for that account with these values:
Service account name - assign a unique name for the account to help you remember its uses later on.
Role - Storage Object Viewer (roles/storage.objectViewer)
Service account ID - leave empty
Key type - JSON
Click Create to generate the key for your Project.
Copy the entire contents of the JSON file.

Save the data you copied to paste it when configuring integration for GCR.
