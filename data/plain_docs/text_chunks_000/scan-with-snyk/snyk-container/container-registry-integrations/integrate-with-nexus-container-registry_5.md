Log in to your account and navigate to the Group and Organization that you want to manage.
Under the Projects tab, click Add project.\
   The list of integrations already configured on your account opens.
Select the Nexus option or Other if Nexus does not appear.\
   The view Which images do you want to test? view opens, displaying all available images for your connected registry, grouped by each of your repositories.
Select single or multiple images to be imported to Snyk.\
   You can choose a specific image or select an entire repository. You can also search by image name to find specific images to import.
To finish, click Add selected repositories on the top-right.\
   A status bar appears at the top of the page as the images are imported; you can continue working in the meantime.
When the import ends:
You can view the newly imported image, marked with a NEW tag, on the Projects page. Images are grouped by repository and are each linked individually to a detailed Project page.
An import log becomes available; you can reach it at the top of the Projects list.
To enrich the data and get recommendations regarding your base image, under Settings, you can connect your Dockerfile to the image Project. For more information, see Adding your Dockerfile and testing your base image.

Nexus imports are indicated with a unique icon. You can also filter to view only Nexus Projects.
Nexus Project in Projects listing

For application vulnerabilities within container images, any changes to the application will not be reflected with a manual or recurring retest. A re-import of the image is required. For more information, see Detecting application vulnerabilities in container images.
