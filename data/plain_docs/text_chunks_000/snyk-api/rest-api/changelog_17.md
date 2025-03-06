GET - /orgs/ - Updated

the response property data became optional for the status 200

the response property jsonapi became optional for the status 200

the response property links became optional for the status 200

removed the optional property links/first from the response with the 200 status

removed the optional property links/last from the response with the 200 status

removed the optional property links/next from the response with the 200 status

removed the optional property links/prev from the response with the 200 status

removed the optional property links/related from the response with the 200 status


added the non-success response with the status 409


added the optional property data/attributes/created_at to the response with the 200 status


added the optional property data/attributes/updated_at to the response with the 200 status


the response property data/attributes became required for the status 200


the data/type responses property pattern^a-z(_a-z)*$was added for the status200`
