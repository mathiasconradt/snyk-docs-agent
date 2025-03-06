From the Web UI, open the Project with the imported base image.
On the Project page, navigate to Settings.
Enable Custom Base Image. This allows Snyk to recognize this image as a base image in other Projects.
If you want Snyk to use this image as a source to determine the best upgrade path, enable Include in recommendations.


You can also do this using the API endpoint Create a Custom Base Image from an existing container Project.

Enable Custom Base Image

Click Save changes.

If this is the first Project you have marked as a custom base image in the image's repository, you must set a versioning schema. For more information, see Versioning schemas for custom base images. If a schema already exists for the image's repository, it is displayed after you save the changes.

Any changes you make to the versioning schema apply to all custom base images in the repository.

You can also edit the Custom base Image settings for Projects that you have already marked as custom base images.
