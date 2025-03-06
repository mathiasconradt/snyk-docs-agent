Snyk Open Source limitations for .NET

Directory.Build.props and Directory.Build.targets are not  supported for SCM integration. You can scan private dependencies using central package management with the Snyk CLI. You must run dotnet restore and then run snyk test with --all-projects, as each sub-folder will contain its own project.assets.json file.
<ProjectReference>elements are not supported.
Private dependency scanning is supported for SCM integrations by enabling improved .NET scanning for your Organization or Group through the Snyk Preview menu. Navigate to the  Improved .NET scanning page for more details. You can also scan private dependencies using the Snyk CLI

If you need help, contact Snyk Support.
