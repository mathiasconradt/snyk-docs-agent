Audit logs are captured when Snyk users perform actions on the Snyk platform, such as making changes to settings, adding other users, or accessing protected APIs. When you are setting up this integration, it is important to understand how audit logs are captured, based on how a customer's Snyk account is set up:

For customers using Snyk with a single Snyk Organization (or with multiple disconnected Organizations), all audit logs are captured within the scope of the single Organization.
For customers who have a Snyk Group with child Organizations, actions such as adding new Organizations to the group or adding users to the group are audited at the Group level, and are not typically associated with an Organization.

This integration supports both use cases:

Integrate CloudTrail Lake with a single Snyk Organization
All audit logs associated directly with that Organization will be sent to CloudTrail Lake.
If the Organization has a parent Group, actions taken on that Group are not sent to CloudTrail Lake.
If the Organization has members who are also members of other Organizations and Groups, actions taken by those members will only be sent to CloudTrail Lake if they are directly associated with the Organization.
Integrate CloudTrail Lake with a Snyk Group and all of its child Organizations
All audit logs associated with the Group or any of its child Organizations will be sent to CloudTrail Lake.
When new Organizations are added to the Group, audit logs for those Organizations will be sent automatically to CloudTrail Lake.
