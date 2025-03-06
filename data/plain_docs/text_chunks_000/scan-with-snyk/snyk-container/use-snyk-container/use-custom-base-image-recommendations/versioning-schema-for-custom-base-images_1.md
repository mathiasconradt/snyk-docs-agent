This schema adheres to the Semantic Versioning Specification (SemVer).
In the below example, when Snyk scans the images and marks them as custom base images in the order shown, the SemVer logic is:

somecompany/alpine-base:3.18.3
somecompany/alpine-base:3.19.0
somecompany/alpine-base:3.18.5

Snyk recommends the second image, as it is the newest image based on the semantic versioning of the tag.
The following commonly used examples are not supported SemVer tags:

v1.2.3
1.2
latest
