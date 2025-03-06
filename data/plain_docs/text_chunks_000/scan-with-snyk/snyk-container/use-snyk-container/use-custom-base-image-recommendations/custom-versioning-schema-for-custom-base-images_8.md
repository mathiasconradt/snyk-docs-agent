Regular expression syntax flavor

CVS uses a subset of the ECMAScript regex. See the guide on ECMAScript regex syntax by MDN.
Backreferences and lookahead assertions are not supported. Internally, Snyk uses the RE2 library. For a full list of unsupported features, see Syntax on re2 GitHub.
Note that the regular expression string is parsed as an ECMAScript regex and then internally converted to RE2 syntax. For example, use the (?<name>re) syntax for grouping. (?P<name>re) will not parse correctly.
In the list of supported features, take into consideration only the feature, not the syntax.
