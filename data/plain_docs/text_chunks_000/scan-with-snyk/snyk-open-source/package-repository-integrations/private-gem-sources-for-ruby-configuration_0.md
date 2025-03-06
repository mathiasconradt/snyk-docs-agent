Feature availability\
This functionality is in beta. Contact Snyk Support to have it enabled for your Organization.
This guide is relevant for Snyk UI integrations only. The CLI supports Ruby Projects with private registries without extra configuration.

You can add a configuration to tell Snyk where your private gems are hosted. This is the same information you would normally add as a Bundler environment variable.
After you have added this configuration, Snyk uses the information to access private dependencies when creating Pull/Merge Requests, by allowing Bundler to reach those dependencies in order to regenerate the lockfile.
