Authentication for Google provider
To use iac describe, set up credentials to make authenticated requests to your GCP project.
Because the iac describe command uses the Cloud Asset API, you must use a service account.
For information on setting up a service account, see the GoogleCloud documentation.
GOOGLE_APPLICATION_CREDENTIALS=your-creds.json \
  CLOUDSDK_CORE_PROJECT=my-project \
  snyk iac describe --to="gcp+tf"
You can use any env var from the GoogleCloud sdk environment variables.
