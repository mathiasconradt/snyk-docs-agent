Navigate to Applications -> Applications and click on the Snyk app you configured.
Select General Tab -> SAML Settings -> Edit and click next to go to the Configure SAML step.
Select Attribute Statements and add an attribute named roles with Name format Unspecified and the Value in the following expression:\
   appuser.user_role == "groupadmin" ? "snyk-groupadmin" : Arrays.flatten(String.replace(String.replace(String.append("snyk-",String.append(Arrays.toCsvString(appuser.snyk_orgs),"-"+appuser.user_role)),",",",snyk-"),",","-"+appuser.user_role+","))
Click Next -> Finish.
Reach out to your Snyk point of contact so they can complete the configuration. This process may take four to five days.

The following explains the roles expression:

If the role is groupadmin, the expression ignores everything else and passes snyk-groupadmin.
If the role is not groupadmin, then for each Snyk Org name listed across all Groups, the expression automatically concatenates the prefix “snyk-” with the Snyk Org name and appends user_role at the end of each Organization name. An example result follows.

Example roles are:[ "snyk-groupadmin", "snyk-org1-admin", "snyk-org2-admin" ]
