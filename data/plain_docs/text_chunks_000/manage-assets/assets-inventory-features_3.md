With this feature, you can define filters and filter assets based on highly specific criteria. For example, repository assets that have AWS in the name, are classified as either A or B, and do not have Snyk IaC as a control executed. This can be useful for finding repositories that have infrastructure as code that Snyk IaC does not scan.
Click Filters from the top left side of the screen. A pop-up is displayed allowing you to add quick filters or advanced filters.  If you select the Advanced filters, you can specify one or more sets of criteria as follows:
Property of an asset (such as asset name, class, control executed).
Condition depends on the asset selected (such as contains or does not contain for asset name).
Value depends on the Property and Condition.
You can add as many filters as needed. To add another filter click Add Filter, set the condition as And or Or and customize the Property, Condition, and Value fields. 
If you use Snyk Essentials for the first time, start with the Coverage filter to determine where you have Snyk implemented.
You can filter the information for all the inventory layouts and can use the following filters available under the Advanced filters section:
Application - the list of the applications for which you have configured the application context catalog in Snyk Essentials.
Asset ID - the unique identifier of the asset.
Asset name - the name of the asset.
Asset type - repository, package, or scanned artifact.
Attribute - asset attributes retrieved from the data source.
Catalog name - the name of your application context catalog.
Category - the category of a repository asset. For example, service or library.
Class - specify the class of the asset.
Clusters - specify the cluster names where the asset is deployed (an asset can be deployed in more than one cluster).
Coverage - specify the product or products used to scan the asset. The Coverage filter identifies if at least one scan has been run by the specified product.
Coverage gap - specify the products for which the asset has not been scanned and do not meet the Set Coverage Control Policy requirements. The coverage gap applies only if you previously defined the coverage requirements of an asset and the asset has never been scanned, or the last scan is older than the default scanning frequency.
Developers - specify the developer or developers who contributed to the asset.
Discovered - specify the period when the asset was discovered.
Issue severity - specify the severity of the issue: critical, high, medium, low.
Issue source - specify where the issue was identified: SCM or third-party integrations. A source category will only be visible if there is at least one source present.
Last seen - specifies the most recent time this asset was detected by Snyk in any of the sources (for example, Snyk, SCM, and so on).
Lifecycle - represents the lifecycle state of the application context catalog component, for example production, experimental, deprecated.
Locked attributes - specify if the attribute value is locked.
