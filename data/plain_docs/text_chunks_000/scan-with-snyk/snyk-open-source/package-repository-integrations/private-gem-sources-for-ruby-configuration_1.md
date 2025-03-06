Navigate to Settings > General.
Find the RubyGems Bundler environment variables section; see the screen illustration.
Add environment variable names and values to define credentials for gem sources.\
   These are generally the same as the values you set on your developer machine, in your CI environments, or both.\
   Example name: BUNDLE_GITHUB__COM, Value: abcd0123generatedtoken:x-oauth-basic
To test the configuration, open a Pull/Merge Request on a Project that contains gems from your private registries to see a lockfile updated and included in the Snyk Fix Pull Request.

RubyGems Bundler environment variables
