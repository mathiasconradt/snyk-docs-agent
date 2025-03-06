The example below expands on the repository in the previous example and includes a small modification to add a slim version of each image.
snyk/example:1.2_V3-full
snyk/example:1.2_V3-slim
snyk/example:1.2_V4-full
snyk/example:1.2_V4-slim
snyk/example:1.3_V1-full
snyk/example:1.3_V1-slim
The schema below ensures that you receive only recommendations for the flavor you are currently using.
(?<C0>\d+)\.(?<C1>\d+)_V(?<C2>\d+)\-(?<M0>.*)

This includes a new group M0, where "M" stands for "match." Snyk then uses this group to filter out possible image recommendations where the MATCH group's value is not equal.

The number following "M" differentiates the multiple categories that your tag can have. In this case, there is only one category of things to match against, so there is only one MATCH group.

For example, recommendations for snyk/example:1.2_V3-slim do not include images whose M0 group does not equal "slim".
