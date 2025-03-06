This error can happen if an expression is passed that contains unsupported regex features such as lookahead assertions and backreferences.
For example (?<thing>.+)_\\k<thing>/.
