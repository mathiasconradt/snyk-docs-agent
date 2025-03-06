Missing MSBuild Condition Construct in project file
The dotnet tool was unable to locate the .targets, .csproj or .props file responsible for one or more MSBuild conditions in your project file.
The tool encountered an error like 
/path/to/file/project.csproj(33,13): error MSB4100: Expected "$(SomeCondition)" to evaluate to a boolean instead of "", in condition "!$(SomeCondition)".
This means the condition definition is missing in the project file that is currently being restored and in any project linked to it from there.      
Snyk can scan only the project files accessible in the current repository or the private dependencies available to Snyk.
For example, if your code has the following structure:
title=project.targets
<Project>
  <PropertyGroup>
    <SomeCondition Condition="'$(SomeCondition)' == ''">false</SomeCondition>
  </PropertyGroup>
</Project>
And
title=project.csproj
<Project Sdk='Microsoft.NET.Sdk'>
  <Import Project='..\external-libraries\some-library\project.targets' />
  <PropertyGroup>
    <TargetFrameworks>net8.0</TargetFrameworks>
  </PropertyGroup>
  <ItemGroup Condition='!$(SomeCondition)'>
    <PackageReference Include='Newtonsoft.Json' Version='13.0.3' />
  </ItemGroup>
</Project>
And external-libraries is not a part of your repository currently being scanned, Snyk is not able to find it.
This error occurs when your code depends on external libraries that are added to or generated from your source code using external tools unknown to Snyk or as part of a build step in your build or a deployment pipeline.
HTTP Status: 422
Help Links:
- https://learn.microsoft.com/en-us/visualstudio/msbuild/msbuild-conditional-constructs
