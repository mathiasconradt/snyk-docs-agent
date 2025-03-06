--source             The source of the targets to be imported
                       (for example, Github, Github Enterprise, Gitlab,
                       Bitbucket Server) [required].
  --groupId            Public id of the group in Snyk (available
                       on Group settings) [required].
  --sourceUrl          Custom base url for the source API that can
                       list organizations (for example, GitHub Enterprise url).
  --sourceOrgPublicId  Public id of the Organization in Snyk that
                       can be used as a template to copy all
                       supported Organization settings.
  --skipEmptyOrgs      Skip organizations that have no targets 
                       (for example, Github organizations that have no repos).
