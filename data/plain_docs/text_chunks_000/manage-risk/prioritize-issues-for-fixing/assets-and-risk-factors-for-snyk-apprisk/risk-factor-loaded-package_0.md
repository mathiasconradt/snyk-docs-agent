Release status
The Loaded package risk factor is in Early Access and available only with Snyk Enterprise plans with Snyk AppRisk. If you want to set it up in your Group, contact your Snyk account team.

Vulnerabilities in a package are only exploitable if relevant code is executed. For that to occur, the package must be loaded into memory. Snyk can use data from integrations to match the packages loaded in a Kubernetes container against the issues found when Snyk scans the container, helping to prioritize issues that are more likely to be exploitable.
Snyk collects information on packages loaded into memory from the runtime environment. This information can be collected either from a runtime integration or from the Snyk Runtime Sensor. The Loaded package risk factor helps to identify packages that impose the highest level of risk. Unlike theoretical risks, the likelihood of exploiting a vulnerability increases when a package is loaded into memory.

The Loaded package risk factor is an enhancement of the Deployed risk factor. 
Loaded packages are associated with a Kubernetes container deployed in a cluster that is known to Snyk. Therefore, an issue cannot have a loaded package risk factor without also having a deployed risk factor.
