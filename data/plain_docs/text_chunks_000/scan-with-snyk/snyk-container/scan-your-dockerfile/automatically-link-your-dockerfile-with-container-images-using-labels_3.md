Links are automatically updated if the Dockerfile labels are updated and are targeting a new location. This can happen during a re-scan or during a recurring scan.
Links are removed if:

The image Project or Dockerfile Project is deleted.
The Dockerfile labels are updated so that they target the Dockerfile location without an existing Project in Snyk or
The Dockerfile labels are removed.
