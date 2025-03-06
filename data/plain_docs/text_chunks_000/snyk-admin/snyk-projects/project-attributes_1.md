On the Projects listing, use Group by none (ungrouped) for optimal Project visibility and to apply tags and filtering attributes at the Project level.
Project level filtering attributes
The available Project attributes are summarized in the following table.
| Attribute                                                                                                                                                                                                                                                                                                              | Attribute options                                                                                                                                           |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Business criticalityNote that When Risk Score is enabled, the Business Criticality attribute automatically affects the score according to the highest attribute level. Learn more in the Risk Score docs.   | CriticalHighMediumLow                                                                                          |
| Environment                                                                                                                                                                                                                                                                                                            | FrontendBackendInternalExternalMobileSaaSOn-PremHostedDistributed |
| Lifecycle stage                                                                                                                                                                                                                                                                                                        | ProductionDevelopmentSandbox                                                                                            |

You can apply attributes to Projects and remove attributes using endpoint Applying attributes.
You can also apply and remove attributes using Snyk CLI options, --project-business-criticality, --project-environment, and --project-lifecycle. Refer to the CLI commands and options summary for the commands that support these options.


Roles with the edit project attributes permission can add an attribute to a Project.
