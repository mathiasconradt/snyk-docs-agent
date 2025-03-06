Projects are held in a Target. A Target represents an external resource Snyk has scanned: a code repository, a Kubernetes workload, or another scannable resource external to Snyk.
Snyk creates a Target when you request to import a Project or scan using the CLI. If the import fails or finds nothing, the Target will be empty.
When you select Group by target, Snyk Targets appear in the Projects listing. You can also find Targets using the endpoints Get targets by org ID and List all Projects for an Org with the given Org ID.
Click the dots at the far right of each Target on the list to see the available actions; these include deleting a target.
Snyk Target and Projects in that Target
Each Snyk Project is associated with a parent Target. One Target may include many Projects. The structure of the Target depends on the Origin.
The grouping option controls whether the filtering attributes are applied at the Target or at the Project level. Group by none (ungrouped) lets you apply tags and filtering attributes at the Project level to the individual Projects.
Snyk provides both pagination to improve the page loading time for Projects page requests and filtering, which is particularly helpful if you have hundreds of thousands of Projects to scan.
Use Sort by (pull down on the far right) to sort the Projects listing by severity, by how recently the Projects were imported, or in alphabetical order.
Sorting attributes available when grouping by Target
