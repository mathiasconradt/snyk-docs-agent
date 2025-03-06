After defining filter components, you need to define the actions that the policy has to perform on the filtered assets. Asset policies support the following actions:

Send Email - Receive an email every time there are asset updates. You can choose between daily emails or scheduling the checks. You can include a link to the relevant assets. Each notification lists all impacted assets. You can view them individually or see the aggregated view by clicking Click Here. The list of assets displayed in the email notification is automatically generated.
Send Slack Message - Receive a Slack notification every time there are asset updates. You need to add your Slack webhook URL, then you can choose between daily emails or scheduling the checks. You can include a link to the relevant assets. Each notification lists all impacted assets. You can view them individually or see the aggregated view by clicking Click Here. The list of assets displayed in the email notification is automatically generated.
Set Asset Class - Sets the class on the matched assets. Removing the policy or turning in off does not retroactively change the asset class back to default.
Set Asset Tag - Sets a tag on the matched assets. Removing the policy or turning in off will remove the tags of this policy from the relevant assets.
Set Coverage Control Policy - Sets a control on filtered assets that checks whether selected security products are scanning assets, optionally within a given timeframe. Assets that fail this control will be marked accordingly on inventory pages. This control applies the OR logic across products.

Asset policy - Set a policy action 
The editor supports multiple flows for the same policy. The flows can be independent or intersect.
Asset Policy- Set multiple policy actions
