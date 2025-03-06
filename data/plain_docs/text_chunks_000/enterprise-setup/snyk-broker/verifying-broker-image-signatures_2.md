To verify the signed image, you must use the built-in cosign verify command.
It is not necessary to pull the Broker container image to perform the verification step
```
$ cosign verify --key cosign.pub snyk/broker:4.169.1-github-com
Verification for index.docker.io/snyk/broker:4.169.1-github-com --
The following checks were performed on each of these signatures:
  - The cosign claims were validated
  - Existence of the claims in the transparency log was verified offline
  - The signatures were verified against the specified public key
[,"image":,"type":"cosign container image signature"},"optional":},"tag":"4.169.1-github-com"}}]
```
