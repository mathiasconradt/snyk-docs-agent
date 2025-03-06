Why are there several items here? What do they mean? Which should I use?
When you import Snyk Projects for the first time, you see a lot of information. As you examine the information, you will see how to use it.
When you write your application, you may write your own code, import Open Source libraries with dependencies, and build all of that into a container for deployment.
Snyk scans different parts of this lifecycle, with different icons and entries showing the results for each of these parts of your work, including:
| Example                                                                                         | Description                                                                                                                                                                                                                            |
| ----------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|                    | Your own code analysis results, scanned by Snyk Code.                                                                                                                                               |
|  | Your open-source libraries, scanned by Snyk Open Source, with a resulting display of each detected manifest, such as pom.xml, package.json, and other manifests for these libraries. |
|                    | Container results, scanned by Snyk Container, for items built into a container, such as a Docker file.                                                                                         |
|            | Kubernetes deployment files, terraform and other IaC files, scanned by Snyk Infrastructure as Code (IaC).                                                                  |

Other files and types can be displayed; see View Project information for more details.
