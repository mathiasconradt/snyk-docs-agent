{
  "public": [
    {
      "//": "used for pushing up webhooks from Azure",
      "method": "POST",
      "path": "/webhook/azure-repos/:webhookId"
    }
  ],
  "private": [
    {
      "//": "get list of projects for given organization",
      "method": "GET",
      "path": "/_apis/projects",
      "origin": "https://$/$",
      "auth": {
        "scheme": "basic",
        "token": "$"
      }
    },
    {
      "//": "get specific repository for given organization",
      "method": "GET",
      "path": "/:owner/_apis/git/repositories/:repo",
      "origin": "https://$/$",
      "auth": {
        "scheme": "basic",
        "token": "$"
      }
    },
    {
      "//": "get list of repositories for given organization",
      "method": "GET",
      "path": "/:owner/_apis/git/repositories",
      "origin": "https://$/$",
      "auth": {
        "scheme": "basic",
        "token": "$"
      }
    },
    {
      "//": "get list of refs",
      "method": "GET",
      "path": "/:owner/_apis/git/repositories/:repo/refs",
      "origin": "https://$/$",
      "auth": {
        "scheme": "basic",
        "token": "$"
      }
    },
    {
      "//": "search through repositories of given organization",
      "method": "GET",
      "path": "_apis/git/repositories",
      "origin": "https://$/$",
      "auth": {
        "scheme": "basic",
        "token": "$"
      }
    },
    {
      "//": "create hook",
      "method": "POST",
      "path": "/_apis/hooks/subscriptions",
      "origin": "https://$/$",
      "auth": {
        "scheme": "basic",
        "token": "$"
      }
    },
    {
      "//": "delete hook",
      "method": "DELETE",
      "path": "/_apis/hooks/subscriptions/:subscriptionId",
      "origin": "https://$/$",
      "auth": {
        "scheme": "basic",
        "token": "$"
      }
    },
    {
      "//": "get file content. restrict by file types",
      "method": "GET",
      "path": "/:owner/_apis/git/repositories/:repo/items",
      "origin": "https://$/$",
      "valid": [
        {
          "queryParam": "path",
          "values": [
            "/package.json",
            "%2Fpackage.json",
            "/yarn.lock",
            "%2Fyarn.lock",
            "/package-lock.json",
            "%2Fpackage-lock.json",
            "/Gemfile",
            "%2FGemfile",
            "/Gemfile.lock",
            "%2FGemfile.lock",
            "/pom.xml",
            "%2Fpom.xml",
            "/req.txt",
            "%2Freq.txt",
            "/requirements/*.txt",
            "%2Frequirements%2F.txt",
            "/build.gradle",
            "%2Fbuild.gradle",
            "/gradle.lockfile",
            "%2Fgradle.lockfile",
            "/build.sbt",
            "%2Fbuild.sbt",
            "/.snyk",
            "%2F.snyk",
            "/packages.config",
            "%2Fpackages.config",
            "/.csproj",
            "%2F*.csproj",
            "/.vbproj",
            "%2F.vbproj",
            "/*.fsproj",
            "%2F.fsproj",
            "/project.json",
            "%2Fproject.json",
            "/Gopkg.toml",
            "%2FGopkg.toml",
            "/Gopkg.lock",
            "%2FGopkg.lock",
            "/vendor.json",
            "%2Fvendor.json",
            "/composer.lock",
            "%2Fcomposer.lock",
            "/composer.json",
            "%2Fcomposer.json",
            "*/project.assets.json",
