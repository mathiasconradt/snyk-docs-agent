Reflects the business criticality of the asset from A (most critical) to D (least critical), as you defined it in the Policies view. 
You can manually change the business criticality of an asset. Click the criticality level and select another one from the list. 
After manually setting the value of a class, you have the option to lock the value to prevent any potential overriding by a policy that has the Set Asset Class as an action. You can lock the value from the general or summary views of an asset. You can unlock the class value at any time by clicking the lock icon. A popup is displayed, asking you for confirmation about unlocking the value.
Inventory menu - Lock the value of a class
The Asset Class column is also available on the Insights UI for risk-based prioritization, and it has the same functionality as it does here. At the moment, the Asset Class column is available only for repository assets, and applicable only for Snyk Code.

The synchronization between Asset Class and the Insights UI can take up to 3 hours.

The class value can be auto-generated with policies. You just need to create a policy that has as an action Set Asset Class.
