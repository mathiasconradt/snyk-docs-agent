You can also test an SBOM using the SBOM CLI. You must first create an SBOM file. For example, you can usecdxgento extract the SBOM to be sent to the Snyk CLI as follows:
cdxgen -t pub -o pub-sbom.json \
  && snyk sbom test --experimental --file pub-sbom.json
