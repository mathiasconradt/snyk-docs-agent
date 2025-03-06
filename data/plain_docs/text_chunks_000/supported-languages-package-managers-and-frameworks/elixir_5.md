If you test a Mix umbrella project, Snyk detects that it is an umbrella project and includes all the child apps automatically.
Along with the main mix.exs, each app mix.exs appears as a separate Project in the Snyk UI, named according to the path to the app.
Snyk fully supports all :hex packages listed in the Mix project, including all their transitive dependencies and any vulnerabilities.
Hex support includes both Elixir and Erlang packages.
Snyk also has limited support for :path, :git and :github dependencies, but not their transitive dependencies or vulnerabilities.

:path dependencies appear in the dependency tree by name
:git and :github dependencies appear in the dependency tree by repository URL and version (either :branch, :tag or :ref, as defined in the mix.exs file)
