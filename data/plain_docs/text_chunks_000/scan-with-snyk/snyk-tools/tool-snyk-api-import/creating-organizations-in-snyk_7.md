Note that for Azure, this step must be done manually. Since Azure has no API call for getting the Azure Organizations, the Orgs file must be created manually for the next commands to run. The file should be formatted this way:
{
   "orgs":[
      {
         "name":"THE_NAME_OF_AN_AZURE_ORG",
         "groupId":"YOUR_SNYK_GROUP_ID",
         "sourceOrgId":"THE_SNYK_ORG_ID_FROM_WHICH_TO_COPY_THE_SETTINGS_FROM"   // **optional**
      },
      {
         "name":"THE_NAME_OF_ANOTHER_AZURE_ORG",
         "groupId":"YOUR_SNYK_GROUP_ID",
         "sourceOrgId":"THE_SNYK_ORG_ID_FROM_WHICH_TO_COPY_THE_SETTINGS_FROM"  // **optional**
      }
   ]
}
After the file is created, you can feed it to the orgs:create command.
