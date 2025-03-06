When Snyk scans your Project with Improved .NET, an environment variable named SnykTest becomes available. You can use this environment variable to create conditionals to avoid executing tools that might break the scan. The following example uses the SnykTest variable to avoid running the swagger command:

<Target Name="GenerateSwaggerFiles" AfterTargets="Build" Condition="'$(SnykTest)' != 'true'">
    <Exec Command="<dotnet-swagger-command>" />
</Target>
