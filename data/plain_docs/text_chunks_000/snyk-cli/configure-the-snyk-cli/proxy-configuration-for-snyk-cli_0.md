General proxy configuration
When you use the Snyk CLI behind a proxy, you must provide the proxy configuration by using the following environment variables:
HTTP_PROXY or http_proxy
HTTPS_PROXY or https_proxy
NO_PROXY or no_proxy
The https in the HTTPS_PROXY means that requests using https protocol use this proxy. The proxy itself does not need to use https.
For more information, see Configure the Snyk CLI to connect to the Snyk API and How can I use Snyk behind a proxy?
