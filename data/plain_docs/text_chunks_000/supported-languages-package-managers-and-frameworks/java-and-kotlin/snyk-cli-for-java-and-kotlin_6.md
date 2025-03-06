Gradle dependencies are declared for a particular scope; each scope is represented by Gradle with the help of Configurations. For example:

implementation: configuration for dependencies required at compile time and runtime, but not exposed to consumers. 
api: configuration for dependencies required at compile time and runtime, and exposed to consumers. 
compileOnly: configuration for dependencies required only at compile time. 
runtimeOnly: configuration for dependencies required only at runtime. 
compileClasspath: configuration for dependencies required at compile time.

In most cases, Snyk will include all the dependencies in the compileClasspath configuration, but this can vary in some circumstances.
To test a specific configuration:

Use the --configuration-matching option with a Java regular expression (case-insensitive) as its parameter. Note that only the first configuration that matches is tested.
If the different sub-projects include different configurations, scan each sub-project separately.

Examples of how you can use the --configuration-matching option

--configuration-matching=compile will match compile, testCompile, compileOnly, and so on.
--configuration-matching=^compile$ will match only compile.
--configuration-matching='^(debug|release)compile$' will match debugCompile and releaseCompile.
--configuration-matching='^(?!.*test).*$' will match all configurations except those containing the string "test".
