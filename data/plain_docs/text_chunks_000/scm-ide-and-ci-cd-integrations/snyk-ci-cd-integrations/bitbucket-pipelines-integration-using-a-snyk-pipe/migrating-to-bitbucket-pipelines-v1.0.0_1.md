This example uses Snyk to scan a Node.js application and break the build if any vulnerabilities are found.

```yaml
script:
  - npm install


npm test


pipe: snyk/snyk-scan:1.0.0
    variables:
      SNYK_TOKEN: $SNYK_TOKEN
      LANGUAGE: "node" # language tag is "node"


npm publish
```




```yaml
script:
  - npm install


npm test


pipe: snyk/snyk-scan:0.7.0
    variables:
      SNYK_TOKEN: $SNYK_TOKEN
      LANGUAGE: "npm" # language tag is "npm"


npm publish
```
