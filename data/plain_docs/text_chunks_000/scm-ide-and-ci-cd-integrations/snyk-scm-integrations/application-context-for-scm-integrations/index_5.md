Open the Integration Hub menu. 
Select the App Context tag and search for ServiceNow CMDB. 
Click the Add button.
Add the Profile name - this is the name of your ServiceNow CMDB profile.
Add the CMDB Instance - this is your ServiceNow instance, use this format: https://<INSTANCE_NAME>.service-now.com
Add the Username and the Password- the username and password to access the ServiceNow CMDB instance
Add the Table name - select the configuration item class that Snyk Essentials should onboard. Use this format cmdb_ci_<class>
Add the CMDB Field to map Repo URL - the specific URL that is being referred to in the ServiceNow CMDB record.
You can select one or more attributes related to repository assets and configure where Snyk Essentials can take this attribute in ServiceNow CMDB. Example: 
Category: application_type
Owner: business_unit
Click the Done button.
When the connection is established, the status of the ServiceNow CMDB integration is changed to Connected.


When you set up the catalog attributes, you can customize the name of the attribute but must ensure that the same name is used in the catalog and in the Integration Hub setup.

The following videos present an overview of the ServiceNow CMDB from the Snyk Web UI.

Application Context with ServiceNow CMDB for Snyk Essentials - Part 1


Application Context with ServiceNow CMDB for Snyk Essentials - Part 2
