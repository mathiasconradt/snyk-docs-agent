Once a PR passes its checks from the previous section and gets merged into the main branch, you can publish the Snyk rules to an OCI registry. This allows you to configure a separate pipeline, download the custom rules bundle from this location, and run the custom rules in order to catch misconfigurations.
For this, add another workflow under .github/workflows called publish.yml:

```
name: Publish Custom Rules
on:
  push:
    branches:
      - 'main'
jobs:
  publish:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
  - uses: actions/setup-node@v1
    with:
      node-version: 15

  - name: Install snyk-iac-rules
    run: npm i -g snyk-iac-rules

  - name: Build bundle
    run: snyk-iac-rules build .

  - name: Login to Docker Hub
    uses: docker/login-action@v1
    with:
      username: $}
      password: $}

  - name: Publish rules
    run: snyk-iac-rules push --registry $OCI_REGISTRY_URL bundle.tar.gz
    env:
      OCI_REGISTRY_URL: "$}:v1"

```

It looks like the previous workflow, but there are a few things to note about this one:

It was configured to run only on main branches, so that it runs when PRs are merged.
A step was added to authenticate with Docker Hub, our chosen OCI registry. For a list of supported registries, read about pushing bundles. Use the docker/login-action GitHub Action to do that and be sure to configure the GitHub secrets under Settings -> Secrets.
A step was added to run snyk-iac-rules build followed by snyk-iac-rules push, which will publish the generated custom rules bundle to an OCI registry.
