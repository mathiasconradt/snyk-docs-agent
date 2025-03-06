A list of requirements follows:

Variable values must be CGI escaped.
Gem sources must use https URLs.\
  Example: Supported: gem "privvy", git: "https://github.com/testexample/ruby-gem-for-private-source"\
  Not supported: gem "privvy", git: "git@github.com:testexample/ruby-gem-for-private-source"
Gem sources must be publicly resolvable, that is, not behind a firewall.
Variables must be configured according to the Bundler Credentials for Gem Sources documentation.
