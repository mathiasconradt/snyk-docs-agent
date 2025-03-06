Open the Integration Hub menu. 
Select the App Context tag and search for Atlassian Compass. 
Click the Add button.
Add the Profile name - this is the name of your Atlassian Compass profile.
Add the Instance URL - this is the URL of the Atlassian Compass instance. Use this format type: https://<YOUR ORGANIZATION>.atlassian.net
Add the Username - this is the username to access the Atlassian Compass instance.
Add the Token - this is the API token to access the Atlassian Compass instance. 
You can select one or more attributes related to repository assets that Snyk Essentials can pull from Atlassian Compass based on the Component Data: 
Catalog Name - Matches with name.
Category - Identified when 'fields.definition.name' equals tier.
Lifecycle - Identified when 'fields.definition.name' equals lifecycle.
Owner - the ownerId (finding owner name from ownerId).
Application - the typeId (all component types, Application, Service, Library, and so on receive an ID).
Click the Done button.
When the connection is established, the status of the Atlassian Compass integration is changed to Connected, and Snyk Essentials will start enriching repository assets with the data found in Atlassian Compass.


When you set up the catalog attributes, you must use the specific service-level attributes, for example attribute.name.
