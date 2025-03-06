If your Gradle Project makes use of a single gradle.lockfile or multiple *.lockfile per configuration, you may see the following issue:

Gradle Error (short): > Could not resolve all dependencies for configuration ':compileOnly'. > Locking strict mode: Configuration ':compileOnly' is locked but does not have lock state.

The compileOnly configuration has been deprecated, and even if your Project successfully generates a lockfile, the compileOnly state is not included because this configuration cannot be resolved. 
Only resolvable configurations compute a dependency graph. To solve this issue, Snyk suggests you update your build.gradle containing dependencyLocking logic with the following instruction:
compileOnly 
This ignores the compileOnly and saves only the necessary information to analyze your Project.
