Some repositories represent multi-manifests, pointing to several different images depending on the operating system and the architecture required. To explicitly scan an image for a specific platform, you can use the Snyk CLI container test command.
For example:
snyk container test --platform=linux/arm64 debian
The --platform option must contain one of the following:

linux/amd64
linux/arm64
linux/riscv64
linux/ppc64le
linux/s390x
linux/386
linux/arm/v7
linux/arm/v
