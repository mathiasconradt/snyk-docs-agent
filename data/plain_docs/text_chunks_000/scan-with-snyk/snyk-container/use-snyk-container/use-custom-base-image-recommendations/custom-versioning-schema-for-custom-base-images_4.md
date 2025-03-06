As an example, consider the following image tags:
snyk/example:1.2_V3
snyk/example:1.2_V4
snyk/example:1.3_V1
Because this repository’s image tags do not follow the semantic versioning standard, it is necessary to describe the tags using a custom versioning schema.
The  snyk/example tag schema is defined by the following elements, in this order:

A number whose value has the highest significance (MAJOR part)
A period
Another number, whose significance is less than the first number number (MINOR part)
An underscore followed by the letter "V" (version)
A number whose value is the least significant.

For Snyk to understand the different parts and their role, it is necessary to define a schema. In this regular expression, named groups represent the significant variables.
The schema below is a translated version of the above example and its elements.
regex
(?<SIGNIFICANT>\d+)\.(?<LESS_SIGNIFICANT>\d+)_V(?<LEAST_SIGNIFICANT>\d+)
Instead of naming a group "SIGNIFICANT", the name is changed to the letter "C" followed by a number. "C" stands for "compare", and the number represents the significance of that group, where 0 is the most significant.
(?<C0>\d+)\.(?<C1>\d+)_V(?<C2>\d+)

Snyk then:

Parses all of the tags in a repository using this expression.
Compares the values in order of significance.
Generates a set of images ordered by their tags.

Snyk can then use this ordered set to give better recommendations.
