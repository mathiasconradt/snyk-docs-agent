Too many vulnerable paths to Project
There are too many vulnerable paths to process the project. If your command supports it, consider the following:pruning repeated sub-dependencies (snyk test -p); excluding directories (snyk test --all-projects --exclude=dir1,file2); setting a detection depth (snyk test --all-projects --detection-depth=3). If the error still occurs, consider debugging or contact Snyk Support.
HTTP Status: 413
Help Links:
- https://docs.snyk.io/snyk-cli/cli-commands-and-options-summary#options-for-multiple-commands
- https://docs.snyk.io/snyk-cli/commands/test#prune-repeated-subdependencies-p
- https://docs.snyk.io/snyk-cli/commands/test#detection-depth-less-than-depth-greater-than
- https://docs.snyk.io/snyk-cli/commands/test#exclude-less-than-name-greater-than-less-than-name-greater-than-...greater-than
