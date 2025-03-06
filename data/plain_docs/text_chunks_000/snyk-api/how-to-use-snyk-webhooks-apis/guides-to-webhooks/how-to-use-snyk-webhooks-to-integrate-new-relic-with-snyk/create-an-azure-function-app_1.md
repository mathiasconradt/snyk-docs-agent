using System.Net;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Primitives;
using Newtonsoft.Json;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using Newtonsoft.Json.Linq;
using System.Web;
using System.Text.RegularExpressions;
public static async Task Run(HttpRequest req, ILogger log)
{
    log.LogInformation("C# HTTP trigger function processed a request.");
    string responseMessage = "No valid payload received!";
try
{
    string name = req.Query["name"];
string requestBody = await new StreamReader(req.Body).ReadToEndAsync();
dynamic data = JsonConvert.DeserializeObject(requestBody);
//log.LogInformation("data: " + requestBody);

if (data.project != null)
{
    string count = data.newIssues.Count.ToString();
    string projectName = data.project.name;
    string[] projectNameParts = projectName.Split(':');
    string containerImage = projectName;
    if (projectNameParts.Length > 1)
    {
        containerImage = projectNameParts[1] + ":" + data.project.imageTag;
    }
    string repoURL = data.project.name;
    string artifactURL = data.project.name;
    string entityLookupValue = repoURL;
    string entityType = "Repository";
    int idxRepoURLBranch = repoURL.IndexOf("(");
    if (data.project.origin == "github")
    {
        int idxRepoURLProject = repoURL.IndexOf(":");
        string package = "";
        if (idxRepoURLBranch >= 0)
        {
            package = repoURL.Substring(idxRepoURLProject + 1, repoURL.Length - idxRepoURLProject - 1);
            log.LogInformation("package: " + package);
            entityLookupValue = "https://github.com/" + repoURL.Substring(0, idxRepoURLBranch);
            repoURL = "https://github.com/" + repoURL.Substring(0, idxRepoURLBranch);

            if (data.project.branch != "")
            {
                repoURL = repoURL + "/blob/" + data.project.branch + "/" + package;
            }
        }
        else
        {
            entityLookupValue = "https://github.com/" + repoURL.Substring(0, idxRepoURLProject);
            repoURL = "https://github.com/" + repoURL.Substring(0, idxRepoURLProject);
        }
    }
    else if (data.project.origin == "docker-hub")
    {
        entityType = "ContainerImage";
        entityLookupValue = data.project.imageId;
        if (idxRepoURLBranch >= 0)
        {
            artifactURL = "https://hub.docker.com/repository/docker/" + repoURL.Substring(0, idxRepoURLBranch);
