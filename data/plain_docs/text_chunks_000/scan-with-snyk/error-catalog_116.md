Your project repository has inconsistent vendoring information
Generating the dependency graph requires Snyk to run go list -deps -json inside the project. If the operation fails, creating a full dependency graph cannot continue.  
This error means that there is inconsistency between your vendor/modules.txt file and your go.mod file. To remediate, you need to:

go mod vendor
go mod tidy

Next, commit those changes to your repo. Snyk does not manipulate with your code on our end by design, which is why this is not done automatically.
To verify if this is the case, clone your project in a clean environment, run go list go list -deps -json and verify whether the operation fails. 
Then try and run the above mentioned commands and see if your SCM system reports changes in files.
HTTP Status: 422
Help Links:
- https://go.dev/ref/mod#go-mod-vendor
