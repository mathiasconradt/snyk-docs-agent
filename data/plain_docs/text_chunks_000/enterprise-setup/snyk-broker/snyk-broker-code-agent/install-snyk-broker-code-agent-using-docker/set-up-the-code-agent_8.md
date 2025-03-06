To use Code Agent with a proxy secured by a custom certificate (HTTPS), add the following environment variables to the docker run command of the Code Agent:
-e HTTP_PROXY=http://my.proxy.address:<port_no.> \
-e HTTPS_PROXY=https://my.proxy.address:<port_no.>
The following steps depend on the version of Code Agent you are running. If you are using the latest tag, to find your nearest versioned image:

Compare the digest of your local image against Docker Hub Code Agent Tags: docker images snyk/code-agent --digest
Find the next image tag of the form x.y.z that was released before your local image was built.
