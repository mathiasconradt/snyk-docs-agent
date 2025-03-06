First, clone the repo. Then run:
npm install -g
snyk-filter uses the node-jq library, which requires that a jq binary be installed. This typically happens transparently via npm install -g, but on some systems jq is not properly installed locally. If you receive an error after installation regarding node-jq, then install jq manually to avoid this error.
```
