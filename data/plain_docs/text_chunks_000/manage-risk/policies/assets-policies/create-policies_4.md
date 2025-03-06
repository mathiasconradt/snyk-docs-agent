Release status
The risk factors on assets are taking the release status of the applied risk factor.
The Runtime discovered and Runtime last seen filters are taking the release status of the used runtime integration.
The following video explains how to create a new policy:
Overview of asset policy editor
You must specify an asset property for each filter component. Navigate to the Filters capabilities page to view all available properties for asset policies. 
Each property contains different options for conditions and values:
| Property                     | Conditions Values                                                                                                                         | Values                                                                                                                |
| ---------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| Application                | Is one ofIs not one of                                                                                         | all available applications for which you have configured the application context in Snyk Essentials                   |
| Asset ID                     | isis notcontainsdoes not containstarts withends with                       | [string]                                                                                                             |
| Asset name                   | isis notcontainsdoes not containstarts withends with                       | [string]                                                                                                             |
| Asset type                   | Is one ofIs not one of                                                                                         | PackageRepositoryScanned artifact                                                 |
| Attribute                    | isis notcontainsdoes not containstarts withends with                       | [string]                                                                                                             |
| Catalog name               | Is one ofIs not one of                                                                                         | the list of names of your application context.                                                                        |
| Category                     | Is one ofIs not one of                                                                                         | the list of the available categories of a repository asset                                                            |
| Class                        | Is one ofIs not one of                                                                                         | A, B, C, D                                                                                                            |
| Coverage                     | containing one or more ofcontaining all ofnot containing one or more ofnot containing all of | Snyk Code, Container, IaC, Open Source                                                                                |
| Coverage gap                 | containing one or more ofcontaining all ofnot containing one or more ofnot containing all of | Snyk Code, Container, IaC, Open Source                                                                                |
