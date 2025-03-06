Attach the desired roles to the user profile with the user API endpoint. An example payload follows for reference.
json
{
 "customSchemas": {
   "Snyk-SSO": {
     "roles": [
       {
         "value": "snyk:org:org1:org_admin"
       },
       {
         "value": "snyk:org:org2:org_admin"
       }
     ]
   }
 }
}
