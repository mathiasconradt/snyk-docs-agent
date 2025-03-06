After configuring the EventBridge integration on the Snyk side, you should see a new Partner Event Source in the EventBridge console. Navigate to the EventBridge console and navigate to the Partner event sources page under the Integration section.
Partner event sources
Snyk-generated event sources will have a naming pattern like this:
aws.partner/snyk.io/org_<SNYK_ORG_ID>/<EVENT_TYPE>\
\
Click on the name of the event source, and then click Associate with event bus and follow the prompts to associate the event source with an event bus. After the event source is associated with an event bus, Snyk can immediately start sending events, which you can use for any actions supported by EventBridge.
