Transition to Snyk Apps
Snyk is transitioning event forwarding integrations to use the Snyk Apps platform. This change will enable new features and enhanced security across current and future Cloud Events integrations. 
During the transition, existing integrations will continue to function normally and customers will have the opportunity to authorize the integrations to ensure they continue working once they become Snyk Apps. You can complete authorization for existing integrations by following these steps:

Go to the Settings page for your Organization
Go to the settings section for the integration you want to authorize (e.g. Amazon EventBridge, AWS CloudTrail Lake, AWS Security Hub)
Click the Authorize app button and complete the App authorization flow

At the end of the transition window, integrations which have not been authorized will no longer be able to forward events and will cease functioning.

The AWS Security Hub integration sends Snyk issues to Security Hub, allowing you to centralize your security reporting, build custom alerting, and trigger automation. After it is configured, the integration automatically uploads Snyk issues to Security Hub as security findings. When issues are updated or new remediations become available, the corresponding Security Hub findings are automatically updated.
There are two steps required to configure the integration:

Configure Security Hub to accept findings from Snyk in the Security Hub console.
Configure Snyk to send findings to Security Hub in the Snyk dashboard.
