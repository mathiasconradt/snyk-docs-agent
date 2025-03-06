The path in the rule should be relative to the .snyk file location.
All rules must have a preceding dash to be valid: - <exclusion_rule>
For rules beginning with special characters and patterns, such as an asterisk character *, you must wrap them in double quotes (" "). This ensures they are treated as a single entity, avoiding potential misinterpretation or unintended behavior. For example, "*/src"
The following are considerations in using indentations:
When using the syntax in the .snyk YAML file, pay careful attention to new lines and their indentation. Using the wrong indentation will prevent the execution of your excluding specification.
Do NOT use tabs for indentation. Use only spaces for indentation.
To verify that you are using the syntax correctly, you can use a YAML Validator, like YAML Lint. Be aware that some YAML Validators do not differentiate between the use of tabs and spaces for indentation. If you use tabs, a Validator may approve the syntax, but the exclude specifications will not be executed.
For more information on the syntax of shell matching patterns, see, for example. the following:
GNU Org - Shell Pattern Matching
Docstore - Pattern Matching Quick Reference with Examples
