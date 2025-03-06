Standard format expression
The example below shows how to develop the expression for this registry.
snyk/example:1.2.5_deb9_2023061209
snyk/example:1.2.5_deb9_2023090208
snyk/example:1.2.5_deb10_2023110208
snyk/example:1.2.6_deb10_2023110508
snyk/example:1.4.1_deb10_2023110808
snyk/example:1.4.1_deb10_2023110208-slim
Start with defining the simple SemVer element:
regex
(?<C0>\d+)\.(?<C1>\d+)\.(?<C2>\d+)
This groups the major, minor, and patch parts of the tag.
Next, there is a section that indicates the underlying OS distribution. Here, there are two options:

If the OS that the base image is using is not a concern, and only the version's magnitude is a concern, "ignore" this section by not grouping it in the regex: _.*_.
To avoid a mismatch between distributions, add a MATCH group: (?<M0>deb\d+)

Now, the expression looks like this:
(?<C0>\d+)\.(?<C1>\d+)\.(?<C2>\d+)_(?<M0>deb\d+)_

Next is the date element. Sometimes dates are there only to provide more information and need not be taken into consideration when comparing versions. In this case, skip over it.
If the date element is important, decide how significant each date element is relative to the SemVer. For example, is the year more significant than a major version?
To keep the significance order, use the regex: 
regex
(?<C3>\d)(?<C4>\d)(?<C5>\d)(?<C6>\d)
Since the date is ordered in such a way that the number produced by concatenating the year, month, day, and hour can be compared to another concatenated date correctly, the long regex above can be replaced with a simpler one: 
regex
(?<C3>\d)
Now the regex looks like this:
(?<C0>\d+)\.(?<C1>\d+)\.(?<C2>\d+)_(?<M0>deb\d+)_(?<C3>\d)

The optional flavor is last. Add another MATCH group here and make it optional: 
regex
(?:\_(?<M1>.*))?
This avoids getting slim recommended if it is not in use and only gets slim recommended if it is being used.
The complete custom versioning schema expression looks like this: 
(?<C0>\d+)\.(?<C1>\d+)\.(?<C2>\d+)_(?<M0>deb\d+)_(?<C3>\d)(?:\-(?<M1>.*))?
