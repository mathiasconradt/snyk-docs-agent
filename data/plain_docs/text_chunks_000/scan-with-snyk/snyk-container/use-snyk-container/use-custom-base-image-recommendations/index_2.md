To use the Custom Base Image Recommendation feature, the base images and the application images built on top of a base image must be imported to Snyk as Projects. These Projects can be in different Organizations, but the Organizations must belong to the same Group.
To receive custom base image recommendations for an application image, you must specify a Dockerfile in the application image Project.

As opposed to public Docker Official Images, Snyk can detect a custom base image only when a Dockerfile is linked to the application image Project.

All custom base image recommendations are considered minor upgrades, regardless of the image tag.
To determine the latest version of a base image across Projects imported into the same repository, Snyk allows configuring a versioning schema.
The Custom Base Image Recommendation feature supports Automatic fix PRs. If you are not using the latest version of the base image, then immediately after image import Snyk automatically issues a fix pull request against your Dockerfile to upgrade to the latest available custom base image version.
