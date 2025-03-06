Use the schema endpoint to add a schema that can be tied to the users. An example schema follows. This schema makes it possible to expose the desired custom role mapping in the SAML payload for the user.
json
{
   "fields":
   [
     {
       "fieldName": "roles",
       "fieldType": "STRING",
       "readAccessType": "ADMINS_AND_SELF",
       "multiValued": true,
       "displayName": "roles"
     }
   ],
   "schemaName": "Snyk-SSO"
 }
