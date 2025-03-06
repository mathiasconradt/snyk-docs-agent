When setting up a Snyk Broker, there are some questions you need to ask regarding either standing up a new broker or updating an existing Snyk broker connection:

Are you hitting any API Rate Limit issues?
Do you need to update the SCM token to a user that has access to all relevant SCM repositories?
Do you have more than 1000 repos?

If you answered Yes to any of the above questions, then you need to deploy a new Snyk Broker to accommodate the Snyk Essentials SCM connection. 

Snyk recommends creating a new Organization in Snyk specifically for the Snyk Essentials Broker.

Navigate to the Snyk Broker page for more details about installing and configuring Snyk Essentials using Snyk Broker.
