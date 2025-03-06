To use Snyk Broker with Go, you must disable full source code analysis.

Go Modules Projects imported using new Snyk Broker clients should work as expected.
To add support to clients created before December 30, 2020, add go.mod and go.sum to your accept.json file, as per the changes in this pull request.
If you're using private Go Modules integrated through the Broker, each private module must have a go.mod file defined.
