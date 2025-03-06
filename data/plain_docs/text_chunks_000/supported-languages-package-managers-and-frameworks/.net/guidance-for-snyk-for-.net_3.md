If you believe you have found false positives because when the application runs in production, you always pull the latest/explicit patches from Microsoft, which may mean the vulnerability is no longer relevant to your Project, you may ignore them and do the following:

If, in production your application always runs on the latest SDK patch version, you can set TargetLatestRuntimePatch to true in the Project file. Make sure to upgrade your environments (for example, dev, prod) to the latest runtime version.

<TargetLatestRuntimePatch>true</TargetLatestRuntimePatch>

You may choose to publish a self-contained app that includes the runtime. Then set RuntimeFrameworkVersionto the specific patch version in the Project file. You may choose to ignore vulnerabilities that you believe are no longer relevant.

<PropertyGroup>
  <RuntimeFrameworkVersion>5.0.7</RuntimeFrameworkVersion>
</PropertyGroup>
Use this guide to apply Snyk effectively in your technology stack.
