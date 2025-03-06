Compatibility in the BitBucket Pipeline integration is limited to environments supported by the Docker container the integration runs in. Following the Snyk announcement Decoupling Snyk Scan from Snyk CLI Docker Images, before v1.0.0, the experience was limited to environments supported by the Snyk CLI Docker Images.
With the release of v1.0.0, users can define custom images. If the list of environments provided by the LANGUAGE variable does not support your particular build environment, you can define your own build environment in the form of a custom Docker image.
Ensure that the Prerequisites for Bitbucket Pipelines integration are met.
As long as the pushed image is publicly accessible, you can use the SNYK_BASE_IMAGE and LANGUAGE variables to reference your custom image and tag, respectively, in your Bitbucket pipeline:

```yaml
script:
  - npm install
  - npm test

pipe: snyk/snyk-scan:1.0.0
    variables:
      SNYK_TOKEN: $SNYK_TOKEN
      LANGUAGE: "node-lts"
      SNYK_BASE_IMAGE: "foobar/snyk"
