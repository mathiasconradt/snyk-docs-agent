For Ruby versions < 3.2, Snyk does not support pinning a specific version of Ruby in the Gemfile, for example, ruby "2.7.7". You must use a more permissive version range that encapsulates all point versions, such asruby "~> 2.7.x"

Snyk can fix vulnerabilities by updating vulnerable gems using bundle updateafter modifying your Gemfile, adhering to the rules you have specified there as far as possible.
In some scenarios, Snyk cannot upgrade all dependencies to non-vulnerable versions. In this case, consider updating the rules in your Gemfile.
