Directory.Build.props , global.json and other .NET-specific manifest files are supported, but the file names must use upper and lower case, as Microsoft describes.
For global.json, Snyk does not support all major.minor.patch versions that are currently supported by Microsoft, only a subset thereof. For more information, see this error code.
The operations are performed on a case-sensitive file system, meaning manifest definitions like your <ProjectReference>s strings must match files and folders with the same case.
Snyk does not support Projects that use Visual Studio Build Tools.
Snyk does not support Windows-specific frameworks (WPF, WCF) for .NET Projects.
Projects with downloaded dependencies totaling more than 10GB are not supported.
