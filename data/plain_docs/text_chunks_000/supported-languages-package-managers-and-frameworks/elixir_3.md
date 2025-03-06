To scan your dependencies, you must first install Elixir and Mix. For details, see the Elixir installation instructions.

Snyk offers security scanning to test your Elixir Projects for vulnerabilities using the CLI.
Mix is a build tool that compiles, tests, and creates Elixir projects. Mix manages dependencies by integrating with the Hex package manager.
Snyk builds a dependency tree for your Project by analyzing your mix.exs and mix.lock files. The mix.lock file must be present and in sync with the mix.exs file. After Snyk builds the tree, Snyk uses the vulnerability database to find vulnerabilities in the packages anywhere in the dependency tree.
