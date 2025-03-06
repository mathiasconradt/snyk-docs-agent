Log in to your account and navigate to the relevant Group and Organization you want to manage.

Navigate to Projects, and click Add projects.\
   The list of integrations already configured on your account opens. 
From the list of integrations, select ECR. The view Which ECR images do you want to test? opens and displays all available images for the registry you connected, grouped by each of your repositories.
Select one or multiple images with any or all of the following methods:
To import a specific image, type its name in the Image Name field.
If you want to import all of the associated images, select any of the repositories.
To select multiple images, expand and collapse repositories.
Click Add selected images.\
   A status bar appears at the top of the page as the images are imported; you can continue working in the meantime.
When the import ends, a notification of success or failure appears at the top of the page. Click Refresh Page to view the Projects page with the newly imported images.\
   Images are grouped by repository and linked individually to a detailed Projects page.
You can now connect your Git repo to this Project to use your Dockerfile for enriched fix advice.\
   For more information, see Detect vulnerable base images from your Dockerfile.

You can filter to view only ECR Projects, which are marked with a unique icon.
Example of an ECR Project
Amazon ECR integration works like other Snyk integration. To continue to monitor, fix, and manage your Projects, see the relevant pages in the Snyk user documentation.

For application vulnerabilities within container images, any changes to the application will not be reflected with a manual or recurring retest. A re-import of the image is required. See Detecting application vulnerabilities in container images for more information.
