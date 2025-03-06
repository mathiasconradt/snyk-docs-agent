This issue is often seen on Windows systems that have company policy in a firewall or other tool to prevent automatic .exe download by showing an interactive popup requesting approval. 
In the IDE, this popup is not shown, and the .exe file cannot be downloaded. This may result in a 0KB file being created in the download location. 
To determine if this is the case, navigate to the location for the CLI or Language Server shown in your Snyk plugin settings in the IDE. If either the CLI or Language Server files are 0KB, this is likely the issue.
