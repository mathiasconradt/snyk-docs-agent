"**%2Fproject.assets.json",
        "**/Podfile",
        "**%2FPodfile",
        "**/Podfile.lock",
        "**%2FPodfile.lock",
        "**/go.mod",
        "**%2Fgo.mod",
        "**/go.sum",
        "**%2Fgo.sum",
        "**/Dockerfile",
        "**%2FDockerfile"
      ]
    },
    {
      "queryParam": "recursionLevel",
      "values": ["none"]
    },
    {
      "queryParam": "download",
      "values": ["true"]
    },
    {
      "queryParam": "includeContent",
      "values": ["true"]
    }
  ],
  "auth": {
    "scheme": "basic",
    "token": "$"
  }
},
{
  "//": "get list of files for given repository",
  "method": "GET",
  "path": "/:owner/_apis/git/repositories/:repo/items",
  "origin": "https://$/$",
  "valid": [
    {
      "queryParam": "recursionLevel",
      "values": ["full"]
    },
    {
      "queryParam": "download",
      "values": ["false"]
    },
    {
      "queryParam": "includeContent",
      "values": ["false"]
    }
  ],
  "auth": {
    "scheme": "basic",
    "token": "$"
  }
},
{
  "//": "get list of commits for given repository",
  "method": "GET",
  "path": "/:owner/_apis/git/repositories/:repo/commits",
  "origin": "https://$/$",
  "auth": {
    "scheme": "basic",
    "token": "$"
  }
},
{
  "//": "update status of given commit",
  "method": "POST",
  "path": "/:owner/_apis/git/repositories/:repo/commits/:commitId/statuses",
  "origin": "https://$/$",
  "auth": {
    "scheme": "basic",
    "token": "$"
  }
},
{
  "//": "update status of given pull request",
  "method": "POST",
  "path": "/:owner/_apis/git/repositories/:repo/pullRequests/:pullRef/statuses",
  "origin": "https://$/$",
  "auth": {
    "scheme": "basic",
    "token": "$"
  }
},
{
  "//": "find PR for given repository",
  "method": "GET",
  "path": "/:owner/_apis/git/repositories/:repo/pullrequests",
  "origin": "https://$/$",
  "auth": {
    "scheme": "basic",
    "token": "$"
  }
},
{
  "//": "create new PR in given repository",
  "method": "POST",
  "path": "/:owner/_apis/git/repositories/:repo/pullrequests",
  "origin": "https://$/$",
  "auth": {
    "scheme": "basic",
    "token": "$"
  }
},
{
  "//": "update existing PR in given repository",
  "method": "PATCH",
  "path": "/:owner/_apis/git/repositories/:repo/pullrequests/:pullRef",
  "origin": "https://$/$",
  "auth": {
    "scheme": "basic",
    "token": "$"
  }
},
{
  "//": "push new commit in given repository",
  "method": "POST",
  "path": "/:owner/_apis/git/repositories/:repo/pushes",
  "origin": "https://$/$",
  "auth": {
    "scheme": "basic",
    "token": "$"
  }
},
{
  "//": "used to redirect requests to snyk git client",
  "method": "any",
  "path": "/snykgit/*",
  "origin": "$"
}

]
}
