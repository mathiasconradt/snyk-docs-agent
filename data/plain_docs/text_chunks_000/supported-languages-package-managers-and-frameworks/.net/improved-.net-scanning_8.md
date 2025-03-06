The improved .NET scanning feature supports:

.NET 6, 7, 8 and 9
All versions of .NET Standard

If you import an unsupported .NET Project using an SCM integration, the improved .NET scanning feature will not be enabled and will fall back to the legacy scanning method.
The <TargetFramework> used must be compatible with what is currently supported by Microsoft in order to be correctly picked up by Snyk scanners.
