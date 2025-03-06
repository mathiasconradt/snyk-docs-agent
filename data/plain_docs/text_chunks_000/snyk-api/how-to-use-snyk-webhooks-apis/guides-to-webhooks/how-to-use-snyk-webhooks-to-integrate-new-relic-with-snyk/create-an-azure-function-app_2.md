repoURL = "https://hub.docker.com/repository/docker/" + repoURL.Substring(0, idxRepoURLBranch);

            if (data.project.branch != "")
            {
                repoURL = repoURL + "/tree/" + data.project.branch;
            }
        }
        else
        {
            int idxRepoURLProject = repoURL.IndexOf(":");
            artifactURL = "https://hub.docker.com/repository/docker/" + repoURL.Substring(0, idxRepoURLProject);
            repoURL = "https://hub.docker.com/repository/docker/" + repoURL.Substring(0, idxRepoURLProject);
        }
    }
    else if (data.project.origin == "azure-repos")
    {
        var AZURE_DEVOPS_ORG = Environment.GetEnvironmentVariable("AZURE_DEVOPS_ORG");
        int idxRepoURLProject = repoURL.IndexOf("/");
        string package = "";
        if (idxRepoURLBranch >= 0)
        {
            package = repoURL.Substring(idxRepoURLProject + 1, repoURL.Length - idxRepoURLProject - 1);
            log.LogInformation("package: " + package);
            entityLookupValue = "https://dev.azure.com/" + AZURE_DEVOPS_ORG + "/" + repoURL.Substring(0, idxRepoURLProject);
            repoURL = "https://dev.azure.com/" + AZURE_DEVOPS_ORG + "/" + repoURL.Substring(0, idxRepoURLBranch);

            if (data.project.branch != "")
            {
                repoURL = repoURL + "/blob/" + data.project.branch + "/" + package;
            }
        }
        else
        {
            entityLookupValue = "https://dev.azure.com/" + AZURE_DEVOPS_ORG + "/" + repoURL.Substring(0, idxRepoURLProject);
            repoURL = "https://dev.azure.com/" + AZURE_DEVOPS_ORG + "/" + repoURL.Substring(0, idxRepoURLProject);
        }
    }

    log.LogInformation(projectName + ", data.newIssues.Count: " + count);
    responseMessage = "No new issues found. Nothing to process!";

    name = name ?? data?.name;
    string browseUrl = data.project.browseUrl;
    int x = 0;

    StringBuilder sb = new StringBuilder();
    sb.Append("{\"findings\":[");

    if (data.newIssues.Count > 0)
    {
        log.LogInformation("New issues found!");

        for (int i = 0; i < data.newIssues.Count; i++)
        {
            string id = data.newIssues[i].id.ToString();
            string issueType = data.newIssues[i].issueType;
            string pkgName = data.newIssues[i].pkgName;
            int priorityScore = data.newIssues[i].priorityScore;
            string title = data.newIssues[i].issueData.title;
            string issueId = data.newIssues[i].issueData.id;
            string issueVendorId = issueId;
            if (data.newIssues[i].issueData.identifiers.CVE.Count > 0)
            {
                issueId = data.newIssues[i].issueData.identifiers.CVE[0];
            }
            else if (data.newIssues[i].issueData.identifiers.CWE.Count > 0)
            {
