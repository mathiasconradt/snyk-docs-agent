Your project repository is missing required files
Generating the dependency graph requires Snyk to run go list go list -deps -json inside the project. If the operation fails, creating a full dependency graph cannot continue.  
This error means that you need some cleanup, (such as go mod tidy) or your project deployment process contains a code generation step such as protobuf or similar that is not currently supported by Snyk. 
To verify if this is the case, clone your project in a clean environment, run go list go list -deps -json and verify whether the operation fails. 
If Snyk cannot process your code successfully, insert the Snyk CLI as part of your deployment pipeline.
HTTP Status: 422
Help Links:
- https://docs.snyk.io/snyk-cli
- https://github.com/snyk/snyk-go-plugin
- https://github.com/golang/go/blob/master/src/cmd/go/internal/list/list.go
