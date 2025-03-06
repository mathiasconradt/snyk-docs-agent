For some packages, a version contains two or even more licenses that apply simultaneously. Snyk calls these dual-licenses or multi-licenses.
There are two types of dual or multiple licenses:

OR - If Snyk recognizes two licenses marked with ORbeing used in a package, this means the customer can comply with either of the licenses.

Example of an OR license in npm

AND - If the license explicitly has AND, customers must comply with all (dual or multiple) licenses.

Example of an AND license in npm
In both of these cases, Snyk displays the severity of the license with the highest severity when displaying issues, where all licenses have a severity. 

Licenses on the vulnerability card are sorted with the lowest severity license first, even when the vulnerability card is labeled with the highest severity. 
If any of the multiple licenses on the package at the scanned version are set to severity:none, then the current behavior is that no license vulnerability is shown.
