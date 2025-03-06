Out of Sync Error
Sometimes a project may become out of sync between the lockfile and the manifest file. This might happen if the package.json is modified or updated but the pnpm-lock.yaml is not. 
This can be resolved by ensuring the lockfile and manifest file are correctly synced, by executing pnpm install.
In some cases, it may be necessary to delete the node_modules folder and the pnpm-lock.yaml and run pnpm install again to force a full reinstall. 
HTTP Status: 422
Help Links:
- https://support.snyk.io/s/article/Out-of-sync-manifest--lockfile-in-the-project
