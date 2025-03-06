If the Snyk Runtime Sensor is not properly reporting the is_loaded risk factor, it may be caused by a non-default value of the Linux kernel perf_event_paranoid configuration.\
In such cases, install the helm chart with either --set securityContext.privileged=true or add SYS_ADMIN as a required Linux capability --set "securityContext.capabilities=".

The Loaded package risk factor is not supported by Snyk for operating system packages (such as Debian packages), only for packages which are hosted under package managers such as npm, Maven, or PyPI.

Release versions can be found on GitHub.
