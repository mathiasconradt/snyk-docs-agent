Helm chart versions 2.x.x
Helm chart versions 2.x.x automatically adds a suffix to all object name based on the release name. Simply use different release name for each broker you want to add into the same namespace.

For backward compatibility, 2.1.0 introduces a disableSuffixes flag to revert to the 1.x.x behavior listed below, by simply adding --set disableSuffixes=true or disableSuffixes=true in your values file.
