In cases where a repository does not have a consistent tagging format, you can use non-capture groups.
snyk/example:1.1
snyk/example:1.1.2
snyk/example:1.2
snyk/example:1.2.4
snyk/example:1.2.8
snyk/example:1.3
snyk/example:1.3.5
The above repository contains an inconsistent number of capture groups. To handle this, use the following expression:
(?<C0>\d+)\.(?<C1>\d+)(?:\.(?<C2>\d+))?

In part (?:\.(?<C2>\d+))? , the expression optionally includes a COMPARE group.
When there is an inconsistent number of COMPARE groups, Snyk filters out tags that do not contain enough information to compare them accurately. That is, to get a recommendation for snyk/example:1.2.4, Snyk does not consider snyk/example:1.2 to be a newer version because it is not possible to know whether 1.2 is the same as 1.2.0 or whether it is a rolling tag that points to 1.2.8. However, 1.3, and 1.3.5 are both higher than 1.2.4 and are taken into account as a possible recommendation.
Since 1.3 and 1.3.5 have the same issue as 1.2 and 1.2.4, the recommendation is either 1.3 or 1.3.5. At this point, the specific version that is recommended depends on undefined internal factors. However, Snyk aims to improve this logic.
