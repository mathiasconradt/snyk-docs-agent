Snyk does not fully support Lerna. If your project is set up using Yarn Workspaces, you can scan the project in the same way you scan any Yarn Workspaces project.
If your Lerna project is set up using Yarn Workspaces, you can run snyk test and snyk monitor as follows.
For each example package, you can use the following:
snyk monitor --file=packages/example-package/package.json

Alternatively, you can specify a script to automate scanning of nested package.json files:
javascript
ls packages | xargs -I PKG_NAME snyk monitor --file=packages/PKG_NAME/package.json
