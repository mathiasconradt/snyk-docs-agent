Request: GET https://api.snyk.io/v1/group//roles
Endpoint: List all roles in a group
This call returns an array of objects, each describing custom and non-custom (for example, default) roles. Default roles are indicated by the customRole: false property. Save thepublicId of each role you want to assign to a user.
