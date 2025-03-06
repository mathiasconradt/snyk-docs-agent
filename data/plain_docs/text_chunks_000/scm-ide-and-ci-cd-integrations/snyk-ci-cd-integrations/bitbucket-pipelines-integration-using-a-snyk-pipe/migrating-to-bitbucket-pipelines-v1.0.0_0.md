When you are upgrading from < 1.0.0 to 1.0.0+, make the following changes in your configuration:

Use tags supported by Snyk images for the LANGUAGE variable instead of tags supported by Snyk CLI Docker images.
Alternatively, you can provide your own custom image using the new SNYK_BASE_IMAGE variable

Users can now define custom images in v1.0.0
