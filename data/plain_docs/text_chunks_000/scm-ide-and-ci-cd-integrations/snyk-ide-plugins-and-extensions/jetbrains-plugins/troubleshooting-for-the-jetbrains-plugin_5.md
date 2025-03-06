The JetBrains plugin scans your Kubernetes workload files and collects the images used. To troubleshoot whether the plugin is correctly scanning a container image, you can verify the following:

Whether the image definition is in the Kubernetes YAML file in the Project. Ensure you have the image specified with an image name mapped in the format imageValue:imageKey for the image yaml attribute, for example, image:nginx:1.17.1.
Whether the container image has been successfully built locally or pushed to a container registry or both. It is also a good practice to verify this before referring to the container image in the Kubernetes YAML file.

If you encounter an error contact support.
For each image found, perform a test with the Snyk CLI.

For more information about how Snyk Container performs a test on the image, Refer to Snyk CLI for Snyk Container.
While testing the image, the CLI downloads the image if it is not already available locally in your Docker daemon.
Snyk plans to expand the scope of container scanning, so if there are more files, such as Dockerfiles or workflows that you want to be supported, submit a feature request to Snyk support.
