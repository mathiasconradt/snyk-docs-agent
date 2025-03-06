Transition to Snyk Apps
Snyk is transitioning event forwarding integrations to use the Snyk Apps platform. This change will enable new features and enhanced security across current and future Cloud Events integrations. 
During the transition, existing integrations will continue to function normally and customers will have the opportunity to authorize the integrations to ensure they continue working once they become Snyk Apps. You can complete authorization for existing integrations by following these steps:

Navigate to the Settings page for your Organization
Navigate to the settings section for the integration you want to authorize (e.g. Amazon EventBridge, AWS CloudTrail Lake, AWS Security Hub)
Click the Authorize app button and complete the App authorization flow

At the end of the transition window, integrations that have not been authorized will no longer be able to forward events and will cease functioning.

The Amazon EventBridge integration sends Snyk platform events to EventBridge, allowing you to integrate Snyk events into your existing AWS environments. The integration can be configured to send two different types of events:

Snyk issue events: These events are sent when new issues are discovered in a Snyk Project, or when an issue is updated. Each event contains information about the vulnerability or other problem found, including whether a remediation is available.
Snyk platform audit events: These events are sent every time a Snyk user performs an action within the Snyk platform. For more information, see Audit logs. This event type is available with Snyk Enterprise plans. See Pricing plans for details

To set up the integration, there are two steps:

Configure an EventBridge integration in the Snyk dashboard. This will create a Snyk Partner Event Source in your AWS account, which you can see in the EventBridge dashboard.
Configure the Snyk integration in Amazon EventBridge. This step involves associating the Snyk event source created in step one with an EventBridge Event Bus. 

After you complete these steps, Snyk immediately starts sending events to the configured event bus.
