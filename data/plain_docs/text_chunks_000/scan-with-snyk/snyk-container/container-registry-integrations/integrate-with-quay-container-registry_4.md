Log in to your account and navigate to the relevant group and Organization that you want to manage.
Under the Projects tab, click Add project.\
   The list of integrations already configured on your account opens.
Select the Quay option or Other if Quay does not appear.
The view titled Which images do you want to test? opens, displaying all available images for your connected registry grouped by each of your repositories.
Select single or multiple images to be imported to Snyk.\
   You can select by choosing a specific image or by selecting an entire repository.\
   You can also search by image name to find specific images to import.
To finish, click Add selected repositories at the top right.\
   A status bar appears at the top of the page as the images are imported; you can continue working in the meantime.
When the import ends:
You can view the newly imported image, marked with a NEW tag, on the Projects page; Images are grouped by repository and linked individually to a detailed Project page.\
      An import log becomes available; you can reach it at the top of the Projects list.
To enrich the data and get recommendations regarding your base image, from the Settings you can connect your Dockerfile to the image Project. For more information, see Adding your Dockerfile and testing your base image.

Quay imports are designated with a unique icon. You can filter to view only Quay Projects.
Quay Project in Projects listing

For application vulnerabilities within container images, any changes to the application will not be reflected with a manual or recurring retest. A re-import of the image is required. For more information, see Detecting application vulnerabilities in container images.
