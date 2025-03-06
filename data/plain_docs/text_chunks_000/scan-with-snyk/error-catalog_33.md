SNYK-CBI-0001
Versioning schema does not support tag
The versioning schema used does not support the given tag. Update the versioning schema to include the tag.
Once the tag of the custom base image is correct, the versioning schema must be modified.
You can use a different versioning schema that supports all tags in the repository or you can update the relevant properties of the versioning schema.
For example, if the repository currently uses Semver, and a new tag "1.2.5.7" needs to be added, then you can use a Custom versioning schema.
HTTP Status: 400
Help Links:
- https://docs.snyk.io/scan-using-snyk/snyk-container/use-snyk-container-from-the-web-ui/use-custom-base-image-recommendations/versioning-schema-for-custom-base-images
