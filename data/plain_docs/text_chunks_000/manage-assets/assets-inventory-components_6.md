The asset information is divided into the following tabs:

Summary - a concentrated view of the asset properties. The Summary screen presents you with the following information:
Info
Class - specifies the business criticality of the asset.
Source - specifies the origin of the asset.
Risk factors - provides the list of active risk factors.
SCM Repository freshness - provides the current status of your repositories, including the date of the last commit.


Tags - provides the list of all tags available for that asset.
Issues  - categorizes the identified types of open issues. 
App Context* - asset metadata from App Context integrations, such as Backstage catalog or ServiceNow CMDB, can include the following attributes: catalog name, category, application, owner, and so on.
Related assets - a list of assets related to the selected one.

*App Context information is visible only when the asset is part of a Project for which the application context was configured.

After you apply the filters, the assets list will only display the assets that directly match the filter conditions, and, if available, a list of children assets related to the selected one is displayed, with the information shown in a table format, with a focus on the following topics: Asset (name), Issues, Controls, Class.

Asset card - Assets Summary view
You can see the details of a related asset by clicking on one of them. Usually, these are Package assets. When looking at Related Assets, you can notice a link to the parent repository at the top. If you click on the parent asset link, you will revert to the initial view of the parent asset.
Asset card - Assets Summary view of a children asset


Related Projects - provides a collection of Snyk Projects that are associated with a specific asset within the platform. These projects are arranged in a table format, enabling you to view relevant information that assists in managing and assessing vulnerabilities related to the asset. Each Project is displayed with the following details:

Projects by Target: A list of Projects grouped by targets. You can see both the Project name and the target name under which the Project is grouped.
Target Reference: An optional identifier that may not always be available.
Scan Source: indicates the source of the Project scan, specifying whether it originated from SCM or the CLI.
Issues: Provides insight into the number and severity of identified issues within the Project.
Organization: Displays the Organization to which the Project belongs.
Last Scan: Shows the relative time since the last scan (for example, "3 hours ago") along with a tooltip that reveals the full date and time upon hovering.

The Projects are systematically sorted first by Target, followed by Target Reference, and finally by Last Scan date, ensuring that related Projects are easily identifiable and accessible for effective monitoring and remediation.


Asset card - Assets Related Projects view

Attributes - miscellaneous attributes, like the Asset ID or Asset Type, that are fetched from the data source, but do not have a dedicated column. The benefit of having this info is not only by presenting it but mostly by making it searchable. You can search for an attribute by either using the inventory search bar or the filters.

Asset card - Assets Attributes view
