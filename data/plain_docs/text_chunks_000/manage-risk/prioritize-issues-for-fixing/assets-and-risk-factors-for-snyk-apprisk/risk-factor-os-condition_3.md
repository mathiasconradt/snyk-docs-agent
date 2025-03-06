Every hour, the data pipeline takes a snapshot of all Snyk Projects and data sources and extrapolates packages and images. This snapshot determines which images and packages are known to Snyk for any customer. 
Snyk Project tags are used to enable the customer to relate image assets to packages. This information is extracted from the hourly data snapshot, and a basic composition graph is generated between images and packages.
The data pipeline examines all the issues reported for the package and image and attempts to map the vulnerability condition between them.
