Organizations - lists all the Snyk Organizations that are mapped to an asset.
Owner - represents the team owning the repository for which the application context catalog was configured.
Risk factors - The list of available risk factors. Risk factors refer to assets that can be vulnerable to security threats based on their exposure, sensitivity, compliance with security standards, and vulnerability history.
Runtime discovered - specify the period when the runtime image asset was discovered.
Runtime last seen - specifies the most recent time this image asset was detected in runtime
SCM Repository freshness - the status of the repository and the date of the last commit.
Active: Had commits in the last 3 months.
Inactive: The last commits were made in the last 3 - 6 months.
Dormant: No commits in the last 6 months.
N/A: There are no commits detected by Snyk Essentials.
Source - specify the asset source.
Tags - information about the detected languages and repository update status.
Title - represents the name of the component for which the application context catalog was configured.
N/A indicates that the repository was detected through a Snyk scan but not directly from the SCM. To detect SCM repositories, you must set up SCM integration at the Group level.
Source - specify the asset source.
Tags - information about the detected languages and repository update status.
Title* - represents the name of the component for which the application context catalog was configured.
*All filters marked with * are visible only to the users who configured the application context catalog for their SCM integrations.
After applying the filters, the asset list will display only the assets that match the specified conditions, without a hierarchical structure.
Coverage and Coverage gap  filter differences
Use the Coverage filter to identify the assets scanned by the products at least once.
Use the Coverage gap filter for assets that do not meet the requirements defined in the Set coverage control policy. 
The Coverage gap filter identifies assets that fall 'out of policy' and do not satisfy the coverage criteria you have specified, due to infrequent scanning or no scanning at all. On the other hand, the Coverage filter allows you to locate assets that have or have not been scanned, irrespective of any coverage requirements.
