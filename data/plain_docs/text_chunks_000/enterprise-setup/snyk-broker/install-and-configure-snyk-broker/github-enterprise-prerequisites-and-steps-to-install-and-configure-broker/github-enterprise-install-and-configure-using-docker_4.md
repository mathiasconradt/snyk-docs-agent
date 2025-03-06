Support of big manifest files (> 1Mb) for GitHub Enterprise
One reason that open Fix/Upgrade PRs or PR/recurring tests fail may be fetching big manifest files (> 1Mb). To address this issue, enable an additional variable in your broker by following the Additional instructions for Snyk Open Source Scans (SCA) of large manifest files (Docker setup)  

To ensure the maximum possible security, Snyk does not enable this rule by default, as use of this endpoint means that the Snyk platform can theoretically access all files in this repository, because the path does not include specific allowed file names.
