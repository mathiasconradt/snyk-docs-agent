Template NodeJS build
This template allows you to validate your NodeJS code.
The workflow allows running tests and code linting on the default branch.
image: atlassian/default-image:latest
pipelines:
  default:
    - parallel:
        - step:
            name: Build
            caches:
              - node
            script:
              - npm install
        - step:
            name: Snyk scan
            script:
              - pipe: snyk/snyk-scan:1.0.1
                variables:
                  SNYK_TOKEN: $SNYK_TOKEN
                  LANGUAGE: "node-22" # <------ Upgrade to the snyk/snyk:node-22 Snyk Image
                  EXTRA_ARGS: "--all-projects" # Optional
                  DEBUG: "true" # Optional
```
