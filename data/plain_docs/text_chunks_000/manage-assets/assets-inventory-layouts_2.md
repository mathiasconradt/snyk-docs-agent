Every item listed in the inventory is considered an individual asset. Most assets are actual components of the application (code repositories, domains, endpoints, and so on), but an asset can also represent a Group, such as the asset type (repository), a group (certain business unit), or even a product. 
Assets in the inventory are presented with key attributes in the following columns:

Asset - The name of the repository asset, scanned artifact, and the Git remote URL, if available. Scanned artifacts are missing Git remote URLs.
Issue - The number of issue counts on open assets aggregated across all relevant tools of the same severity of the asset itself and its child assets or packages. The severity level is classified into C (critical), H (high), M (medium), and L (low).
Controls - A report detailing all products detected by the Snyk Essentials on a specific repository asset and all products that should be but are not covered by Snyk Essentials.
Tags -  Snyk Essentials automatically tags repository assets with information about the used technologies (Python, Terraform, and so on) in the repository, and repository latest updates. You can also use policies to tag repository assets.
Developers - Includes the SCM profile details for code committers to the repository asset.
Class - Reflects the business criticality of the asset from A (most critical) to D (least critical), as defined by the user in the Policies view. You can manually change the class or automatically change it by applying a policy. You can lock the value you have manually set for a Class to prevent policies from overriding it.
Risk factors - Lists the potential vulnerabilities and security threats associated with each asset and helps users identify specific risks, enabling them to prioritize and address issues more effectively. 
Source - Reflects the source of the asset, which can come from Snyk, an SCM, or a third-party integration.
SCM Repository freshness - Reflects the status of the repository and the date of the last commit.
Clusters - Provides a list of all the cluster names where the image asset is deployed. 
Organizations - Provides a list of the Snyk Organizations that are mapped to the asset.


The Clusters column is hidden by default. To enable it, click Columns, select Clusters from the dropdown list, then click Apply to save the changes.
