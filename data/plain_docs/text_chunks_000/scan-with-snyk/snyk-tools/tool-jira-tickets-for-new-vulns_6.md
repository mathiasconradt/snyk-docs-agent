A logFile listing all the tickets created can be found where the tool has been run.
{
  "projects": {
    "123": [
      {
        "Summary": "test/goof:package.json - Remote Code Execution (RCE)",
        "Description": "\r\n \\*\\*\\*\\* Issue details: \\*\\*\\*\\*\n\r\n cvssScore:  8.10\n exploitMaturity:  proof\\-of\\-concept\n severity:  high\n pkgVersions: 3.0.0\\]\n\r\n*Impacted Paths:*\n\\- \"snyk\"@\"1.228.3\" =\u003e \"proxy\\-agent\"@\"3.1.0\" =\u003e \"pac\\-proxy\\-agent\"@\"3.0.0\" =\u003e \"pac\\-resolver\"@\"3.0.0\"\n\r\n[See this issue on Snyk|https://app.snyk.io/org/test/project/123]\n\n[More About this issue|https://snyk.io/vuln/SNYK-JS-PACRESOLVER-1589857]\n\n",
        "JiraIssueDetail": {
          "JiraIssue": {
            "Id": "10001",
            "Key": "FPI-001"
          },
          "IssueId": "SNYK-JS-PACRESOLVER-1589857"
        }
      },
      {
        "Summary": "test/goof:package.json - Prototype Pollution",
        "Description": "\r\n \\*\\*\\*\\* Issue details: \\*\\*\\*\\*\n\r\n cvssScore:  6.30\n exploitMaturity:  proof\\-of\\-concept\n severity:  medium\n pkgVersions: 4.2.0\\]\n\r\n*Impacted Paths:*\n\\- \"snyk\"@\"1.228.3\" =\u003e \"configstore\"@\"3.1.2\" =\u003e \"dot\\-prop\"@\"4.2.0\"\n\r\\- \"snyk\"@\"1.228.3\" =\u003e \"update\\-notifier\"@\"2.5.0\" =\u003e \"configstore\"@\"3.1.2\" =\u003e \"dot\\-prop\"@\"4.2.0\"\n\r\n[See this issue on Snyk|https://app.snyk.io/org/test/project/123]\n\n[More About this issue|https://snyk.io/vuln/SNYK-JS-DOTPROP-543499]\n\n",
        "JiraIssueDetail": {
          "JiraIssue": {
            "Id": "10001",
            "Key": "FPI-001"
          },
          "IssueId": "SNYK-JS-DOTPROP-543499"
        }
      },
    ]
  }
}
