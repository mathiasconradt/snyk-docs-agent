Log in to your account and navigate to the relevant Group and Organization you want to manage.
Go to Projects and click Add projects. The list of integrations already configured in your account opens. 
Decide which images you want to test. The view displays all of the available images for the registry to which you connected, grouped by each of your repositories, similar to the following:
Continue with the following steps:

Select single or multiple images by using any or all of the following methods:
Type the name of a single image for import in the Image Name field.
Select any of the repositories for which you want to import all of the associated images.
Expand and collapse repositories to select multiple images across multiple repositories.

Click Add selected repositories.
A status bar appears at the top of the page as the images are imported; you can continue working while the images are being imported.
3. When the import ends, a notification of success or failure appears at the top of the page. Click Refresh to view the Projects page with the newly imported images. Images are grouped by repository and are each linked individually to a detailed Projects page.
4. You can now connect your Git repo to this Project in order to use your Dockerfile for enriched fix advice. For more information, see Adding your Dockerfile and testing your base image.


GCR files are indicated with a unique icon. You can now filter to view only those Projects.
Examples of GCR Projects
GCR integration works similarly to other Snyk integrations. To continue to monitor, fix, and manage your Projects, see the relevant pages in the Snyk docs.

For application vulnerabilities within container images, any changes to the application will not be reflected with a manual or recurring retest. You must re-import the image. For more information, see Detecting application vulnerabilities in container images.
