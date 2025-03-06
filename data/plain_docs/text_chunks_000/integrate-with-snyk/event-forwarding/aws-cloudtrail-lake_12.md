There are three (3) key fields to note when using the Snyk audit log data in AWS CloudTrail Lake.
eventdata.useridentity
The event useridentity contains a field called principalid, which represents the Snyk user ID for the user associated with the audit event. You can use Snyk API v1 endpoint Get organization level audit logs to match the Snyk user ID with a user in your Organization.
eventdata.eventname
This represents the type of audit event, for example, api.access or org.cloud_config.settings.edit, and can be used to group or filter events.
eventdata.additionaleventdata
This field contains a raw JSON payload with more detailed information about the audit event. The content of the payload depends on the type of the event. For example, an API access event will include the accessed URL, while a settings change event will include before and after values for the changed setting.
