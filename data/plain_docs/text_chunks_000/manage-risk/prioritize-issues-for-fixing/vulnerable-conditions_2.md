Jackson Vulnerable Conditions must meet all of the following conditions for the vulnerability to be exploitable.

Vulnerable version: The Jackson package (com.fasterxml.jackson.core:jackson-databind vulnerabilities) should be a specific version that Snyk knows is vulnerable.
Specific setting: A specific setting or functionality must be enabled, in this case, the Polymorphic Type Handling feature.
You can check whether this setting is enabled in your code by looking for one of the following:
@JsonSubTypes annotation was used.
@JsonTypeInfo annotation was used on a Class.
enableDefaultTyping() is used to enable Polymorphic Typing.
enableDefaultTypingAsProperty() is used to enable Polymorphic Typing.


User interactivity: The application needs to accept JSON input from the user.
Specific gadget: A “gadget,” which is a class or function, must be available within the executing scope of the application.
