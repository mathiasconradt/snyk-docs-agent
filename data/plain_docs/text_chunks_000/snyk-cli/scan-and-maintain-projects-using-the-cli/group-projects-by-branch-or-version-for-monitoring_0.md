Feature availability
Grouping Projects by branch or version is available only for Enterprise plans. For more information, see Plans and pricing.
The feature is supported for areas of Open Source.

Your Project may have multiple states that you want to monitor separately, for example, branches, releases, or deployments. You can use the --target-reference option to separate Projects into these specific groupings.
--target-reference takes any text so you can combine it with a command to automatically set it to a value. Examples follow.
Set --target-reference to the current Git branch.
snyk monitor --target-reference="$(git branch --show-current)"
Use the latest Git tag.
snyk monitor --target-reference="$(git describe --tags --abbrev=0)"
You can adjust the option for the developer tools used in your project. Any valid Git target can be used.
--target-reference allows you to create sub-groupings on the Projects page.
A Project page with sub-groups.
