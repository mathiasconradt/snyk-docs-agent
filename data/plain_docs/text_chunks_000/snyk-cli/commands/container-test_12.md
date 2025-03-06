Allow disabling the scan of node_modules directories inside node.js container images.
In CLI versions v1.1292.0 and higher, node_modules scanning is enabled by default.
 When node_modules scaning is disabled, Snyk reports vulnerabilities for npm Projects sourced from application file pairs: [package.json, package-lock.json], [package.json, yarn.lock].
