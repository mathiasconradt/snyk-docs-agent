{
        log.LogInformation("payload: " + payload);
        var content = new StringContent(payload, Encoding.UTF8, "application/json");
        var NEW_RELIC_SECURITY_URL = Environment.GetEnvironmentVariable("NEW_RELIC_SECURITY_URL");
        var NEW_RELIC_LICENSE_KEY = Environment.GetEnvironmentVariable("NEW_RELIC_LICENSE_KEY");

        var url = NEW_RELIC_SECURITY_URL;
        var headerKey = NEW_RELIC_LICENSE_KEY;

        using var client = new HttpClient();
        client.DefaultRequestHeaders.Clear();
        client.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));
        client.DefaultRequestHeaders.TryAddWithoutValidation("Content-Type", "application/json");
        client.DefaultRequestHeaders.Add("Api-Key", headerKey);
        var response = await client.PostAsync(url, content);

        string result = response.Content.ReadAsStringAsync().Result;
        log.LogInformation("response.StatusCode: " + response.StatusCode);
        if (response.StatusCode == HttpStatusCode.OK)
        {
            x++;
        }
        log.LogInformation("result: " + result);

        // write output as summary
        string output = "Successfully processed " + x + " issues.";
        log.LogInformation(output);
        responseMessage = output;
    }
}
else
{
    log.LogInformation("No project found!");
}

}
catch (Exception ex)
{
    StringBuilder sb = new StringBuilder();
    sb.Append("{");
    sb.Append("  \"eventType\": \"SnykFindingsErrors\",");
    sb.Append("  \"message\": \"" + ex.Message + "\"");
    sb.Append("}");
var content = new StringContent(sb.ToString());

content.Headers.ContentType = new MediaTypeHeaderValue("application/json");

var NEW_RELIC_INSIGHTS_URL = Environment.GetEnvironmentVariable("NEW_RELIC_INSIGHTS_URL");
var NEW_RELIC_LICENSE_KEY = Environment.GetEnvironmentVariable("NEW_RELIC_LICENSE_KEY");

var url = NEW_RELIC_INSIGHTS_URL;
using var client = new HttpClient();
client.DefaultRequestHeaders.Add("Api-Key", NEW_RELIC_LICENSE_KEY);
var response = await client.PostAsync(url, content);

string result = response.Content.ReadAsStringAsync().Result;
log.LogInformation("response.StatusCode: " + response.StatusCode);

responseMessage = "Error during execution";

}
return new OkObjectResult(responseMessage);
}
```
Next Configure Azure Function environment variables.
