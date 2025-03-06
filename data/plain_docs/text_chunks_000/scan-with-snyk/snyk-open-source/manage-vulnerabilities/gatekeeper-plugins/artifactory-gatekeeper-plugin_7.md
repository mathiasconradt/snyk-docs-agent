You can enable debug logs by modifying your $/var/etc/artifactory/logback.xmlfile and adding the following line:
<logger name="io.snyk" level="debug"/>
Artifactory automatically picks up the new configuration. If this does not happen, restart Artifactory.
