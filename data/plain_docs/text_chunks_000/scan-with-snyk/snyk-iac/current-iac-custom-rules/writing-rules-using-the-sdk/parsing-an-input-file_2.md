Another example is the following YAML file, defining a Kubernetes resource:

apiVersion: v1
kind: Pod
metadata:
  name: example
spec:
  containers:
    - name: example
      image: example:latest
      securityContext:
        privileged: true

To get the equivalent JSON format, run the parse command:
snyk-iac-rules parse example.yaml --format=yaml
This prints out the JSON, which you can use as guidance for writing your rules:
{
    "apiVersion": "v1",
    "kind": "Pod",
    "metadata": {
        "name": "example"
    },
    "spec": {
        "containers": [
            {
                "image": "example:latest",
                "name": "example",
                "securityContext": {
                    "privileged": true
                }
            }
        ]
    }
}
In Rego, accessing the privileged field would look like this:
input.spec.containers[0].securityContext.privileged
