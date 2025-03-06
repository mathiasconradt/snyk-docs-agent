The Set up Insights option is available only with Snyk AppRisk.

After you have set up insights, Snyk can set up the required linking for the chosen application. 
To prioritize your Snyk Code and Snyk Open Source vulnerabilities, Snyk needs to understand the relationships between those imported Snyk Projects and the Container Project. Snyk uses the relationships between these Projects as a proxy to understand the composition of the container image. 
The Set up Insights UI displays a variety of asset types, including but not limited to:

Repository assets
Packages
Container images
Scanned artifacts

These assets are directly linked to the ones displayed on the Snyk AppRisk Inventory view. 

For more details regarding supported assets, you can navigate to the Asset and Issue pages. 

The container image is the build artifact that is deployed and running on your Kubernetes cluster, so Snyk can map your application from its source code to its deployed state by understanding the following:

The link between the Source Code and Open Source Dependencies and the image.
What images are deployed to Kubernetes, and how are they configured.

Mapping your application
