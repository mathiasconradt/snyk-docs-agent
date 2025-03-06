Next, create a new service account for Kubernetes connector integration with Snyk AppRisk.

Snyk recommends creating this service account for the Snyk Organization used or created for the Kubernetes agent. 

Navigate to that Snyk Organization -> Settings -> Service Account.
Create a new service account with your chosen name, and from the dropdown, select the role you created in the previous step.
Select the Kubernetes Agent role
After the service account is created, you will see the API token. Copy the API token and save it somewhere safe; you will need this to configure the agent in the Helm chart.
