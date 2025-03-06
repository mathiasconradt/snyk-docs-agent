The Webhooks API is in beta. While the API is in beta, Snyk may change the API and the structure of webhook payloads at any time, without notice. During this beta, Webhooks are available only in the Snyk US-01, US-02, EU-01, and AU-01 regions.

Webhooks allow you to be notified of Snyk system events, enabling you to build notifications and react to changes in your projects. The current implementation supports events for recurring scans of open source and container image related projects.
When events are triggered, Snyk sends HTTP POST requests to URLs you have configured for those events, with all the information you need.
