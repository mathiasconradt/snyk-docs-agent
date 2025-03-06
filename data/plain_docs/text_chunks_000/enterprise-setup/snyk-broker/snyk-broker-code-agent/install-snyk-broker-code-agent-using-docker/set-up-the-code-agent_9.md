To trust a custom Certificate Authority, you must have either:

A single Certificate Authority (encoded as a PEM), or
A directory containing multiple Certificate Authorities (encoded as PEM)

To trust a single certificate, add the following arguments to the docker run command of the Code Agent:
-v local/path/to/ca.pem:/etc/certs/ca.pem \
-e GIT_SSL_CAINFO='/etc/certs/ca.pem'
To trust a directory of certificates, add the following arguments to the docker run command of the Code Agent:
-v local/path/to/certdirectory:/etc/certs
-e GIT_SSL_CAPATH='/etc/certs'
