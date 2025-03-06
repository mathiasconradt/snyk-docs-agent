The following explains how to configure Snyk Broker to use the Broker Client with a Bitbucket Server deployment.
To use the Snyk Broker Client with BitBucket, run docker pull snyk/broker:bitbucket-server. Refer to BitBucket Server/Data Center - environment variables for Snyk Broker for definitions of the environment variables.
If necessary, go to the Advanced configuration page and make any configuration changes needed, such as providing the CA (Certificate Authority) to the Broker Client configuration if the Bitbucket instance is using a private certificate, and setting up proxy support.
