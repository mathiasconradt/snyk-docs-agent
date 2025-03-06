Navigate to the EventBridge integration settings page in the Snyk dashboard and click on the name of the integration you want to manage.
Select Amazon EventBridge integration
Clicking on the name of the integration opens the integration settings page, which displays configuration information for the integration.

Because EventBridge integrations create an external resource that depends on the configured AWS Account ID, Region, and event type, it is not possible to edit these configuration fields. If you need to change one of these fields, delete the integration and create a new one. This deletes the existing partner event source in AWS and creates a new one, which you will need to associate with an event bus as described above.

To delete an integration, scroll to the bottom of the page and click the Remove integration button, then confirm the deletion.
Remove integration
This deletes the integration configuration on the Snyk side and the Partner Event Source associated with this integration in AWS. You can verify that the event source has been deleted in the EventBridge console.
