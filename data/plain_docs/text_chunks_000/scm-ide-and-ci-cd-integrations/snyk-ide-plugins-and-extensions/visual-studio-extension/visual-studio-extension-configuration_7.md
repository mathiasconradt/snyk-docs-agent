To analyze Projects the plugin uses the Snyk CLI, which requires the following environment variables:

PATH: Include the paths to any needed binaries (for example, to Maven).
JAVA_HOME: Specify the path to the JDK you want to use for analysis of Java dependencies
http_proxy and https_proxy: Set if you are behind a proxy server, using the value in the format http://username:password@proxyhost:proxyport\
  Note that the leading http:// in the value does not change to https:// for https_proxy.

You can set environment variables using the Windows GUI or on the command line using the setx tool.
