Transition to Snyk Apps
Snyk is transitioning event forwarding integrations to use the Snyk Apps platform. This change will enable new features and enhanced security across current and future Cloud Events integrations. 
During the transition, existing integrations will continue to function normally and customers will have the opportunity to authorize the integrations to ensure they continue working once they become Snyk Apps. You can complete authorization for existing integrations by following these steps:

Go to the Settings page for your Organization
Go to the settings section for the integration you want to authorize (e.g. Amazon EventBridge, AWS CloudTrail Lake, AWS Security Hub)
Click the Authorize app button and complete the App authorization flow

At the end of the transition window, integrations that have not been authorized will no longer be able to forward events and will cease functioning.


Feature availability\
The AWS CloudTrail Lake integration is available only with Snyk Enterprise plans. For more information, see plans and pricing.

The AWS CloudTrail Lake integration allows you to forward Snyk audit logs to AWS CloudTrail Lake, which lets you run SQL-based queries on your logs and retain them for up to seven (7) years.
This integration can be configured to forward audit logs for a single Snyk Organization, or for a Snyk Group and all of its child Organizations. In either case, there are two steps required to set up the integration:

Add a Snyk integration in AWS CloudTrail Lake.
Configure the integration in Snyk.


This integration sends logs beginning when you enable it. Logs generated before enabling the integration are not sent but may be available from the API endpoint Search Organization audit logs.
