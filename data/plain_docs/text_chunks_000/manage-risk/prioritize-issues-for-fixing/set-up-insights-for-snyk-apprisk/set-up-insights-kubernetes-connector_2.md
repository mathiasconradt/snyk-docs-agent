Prerequisites for Kubernetes connector for Snyk AppRisk
Before you can deploy the Kubernetes connector in your Kubernetes clusters, be sure you have the following:

A Snyk Organization to which the Kubernetes information collected will be sent to be stored. This could be a new Organization; it does not have to be the same one containing the Snyk Projects you wish to use with Snyk AppRisk, but it must be in the same Snyk Group. 
A Snyk service account created specifically to be used with the Kubernetes connector. For instructions on creating a service account, see Service accounts. For the roles and permissions, Snyk recommends:
Creating a new specific role for this service account
Taking a least privilege approach, granting the new specific role the sole permission required to Publish Kubernetes Resources.
