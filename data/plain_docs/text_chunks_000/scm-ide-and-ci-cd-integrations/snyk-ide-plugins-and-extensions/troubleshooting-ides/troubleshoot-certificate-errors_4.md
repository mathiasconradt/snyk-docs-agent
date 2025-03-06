IntelliJ setting

See Trusted root certificates | IntelliJ IDEA.
Updating the Jetbrains certificate handling only will most likely not be sufficient, as the CLI does not use Jetbrains settings, but JAVA_HOME and PATH to determine a JDK. This JDKs certificate store must be updated.
