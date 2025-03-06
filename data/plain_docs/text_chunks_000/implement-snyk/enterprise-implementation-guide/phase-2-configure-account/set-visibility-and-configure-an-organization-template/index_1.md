When you create a new Organization, you can select an existing Organization to use as the model for settings and integrations. To streamline creating your Organizations, Snyk recommends configuring a template Organization before creating your full Organization structure.
This template-based approach will save you considerable time because you will aovid manually configuring each integration for each Organization.
There is no specific template functionality in Snyk. The recommended process is to create an Organization called Template and then fully configure this Organization. Afterwards, when you create more Organizations, you can use the option to clone settings from an existing Organization with Template as the existing Organization.

Creating a template using the API\
Templating functionality is also available if you are creating your Organizations using the API, whether you are using the snyk-api-import tool to mirror an Organization from an existing source, such as GitHub Organizations, or using the endpoint Create a new organization and providing a sourceOrgId.
