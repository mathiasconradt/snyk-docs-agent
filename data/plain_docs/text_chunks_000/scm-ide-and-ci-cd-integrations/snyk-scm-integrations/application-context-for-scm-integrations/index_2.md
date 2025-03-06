A configured SCM integration. 
The catalog-info.yaml file from your Project.

Integration Hub setup for Backstage file

Open the Integration Hub menu. 
Select an SCM integration. 
Click the Settings option of the SCM integration. 
Enable the Add Backstage Catalog option.
Optional - if the Backstage catalog filename in your repository is not catalog-info.yaml you can change the default value in the Backstage catalog filename field.
Select at least one attribute you want to add to Snyk Essentials.


Snyk Essentials parses the fields of the detected file using the default field names unless an alternate field name is specified.


Click the Done button.

After you finish configuring the Backstage catalog, Snyk Essentials starts enriching your repository assets with the data found in the backstage catalog .yaml file.

When you set up the catalog attributes, you must use the specific service-level attributes, for example attribute.name.

The following video presents an overview of the Backstage file from the Snyk Web UI.

Application Context with Backstage Catalog for Snyk Essentials
