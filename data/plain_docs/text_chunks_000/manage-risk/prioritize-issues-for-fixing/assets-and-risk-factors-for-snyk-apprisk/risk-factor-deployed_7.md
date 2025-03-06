The Kubernetes Connector continuously monitors the Kubernetes events. These events are streamed to the Snyk platform continuously. 
On a regular schedule, every hour, the data pipeline performs a reconciliation of the state of the cluster to create a snapshot. This snapshot is used to determine what images are being run in the cluster.
At the same interval, the data pipeline takes a snapshot of all Snyk Projects and data sources and extrapolates packages and images. This snapshot is used to determine which images and packages are known to Snyk for any given customer. 
Both snapshots are then compared, and evidence graphs are generated to determine the deployed facts at that point in time.
