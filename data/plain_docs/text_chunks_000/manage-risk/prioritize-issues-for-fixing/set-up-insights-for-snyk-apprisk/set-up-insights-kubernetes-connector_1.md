One of the goals is to identify risk factors for workloads that are publicly accessible through a network configuration. To do that, Snyk needs to understand what images are deployed on which workloads and how they are configured. 
Thus, Snyk needs to collect the following information:

The list of images and their IDs and SHAs that are deployed.
The services and associated configuration, for example, the networking services you are using.

The Kubernetes connector is the agent deployed in your Kubernetes clusters to collect this information.
