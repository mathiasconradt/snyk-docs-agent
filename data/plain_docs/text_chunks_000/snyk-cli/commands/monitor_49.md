-- [<CONTEXT-SPECIFIC_OPTIONS>]
Use a double dash (--) after the complete Snyk command to pass options (arguments, flags) that follow directly to the build tool, for example Gradle or Maven.
The format is snyk <command> -- [<context-specific_options>]
Example: snyk monitor -- --build-cache
Do not use double quotes in any -- [<context-specific_options>].
Example: Use snyk monitor --org=myorg -- -s settings.xml NOT snyk monitor --org=myorg -- "-s settings.xml"
