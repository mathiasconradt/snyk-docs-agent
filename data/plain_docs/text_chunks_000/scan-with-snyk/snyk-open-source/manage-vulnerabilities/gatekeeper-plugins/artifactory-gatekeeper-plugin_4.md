Whenever a download is requested from an Artifactory remote repository, whether from a package manager or a URL, Snyk automatically scans the artifact for vulnerabilities and license issues. The issues found by Snyk are persisted as artifact properties. Access to the package is later controlled according to these properties, and in line with severity thresholds set in the plugin config.
Depending on the configuration, the plugin can periodically re-scan packages to keep the issue metadata up to date.
The plugin only works with remote repositories. It does not scan locally stored artifacts, but instead queries the Snyk API with the meta-information about the artifacts. Therefore, only published artifacts of the proxied remote repository can be examined by the Snyk Artifactory plugin.
To view details about the download status, open the System Logs.
If a scan finds issues, based on your configuration, the download request can be blocked with an HTTP status code "403 Forbidden".
You can find the results of a scan under the artifact properties, where you can decide to ignore the issues and allow downloads. To find the artifact, use the Artifactory Search Bar or navigate the tree view.
Results of a scan
