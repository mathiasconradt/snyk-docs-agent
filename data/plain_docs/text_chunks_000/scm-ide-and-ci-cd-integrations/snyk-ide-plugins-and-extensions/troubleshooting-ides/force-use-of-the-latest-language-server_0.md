Follow these steps to force the use of the latest Snyk Language Server:

Update the Snyk plugin or extension to the latest version. Using the latest version of the plugin ensures that you can update to the most recent version of the language server. The plugin update alone does NOT update the language server.
Look up the Snyk Language Server binary path (snyk-ls*) or the Snyk CLI binary path in the Snyk Settings of the plugin. You must know the path of the binary file in order to delete it. Follow these instructions depending on IDE:
VS Code
JetBrains
Visual Studio
Eclipse
Delete the binary from that path.
Enable Automatic Management of dependencies in the Snyk Settings or download the latest language server from GitHub or use the getLanguageServer.sh . If you enable Automatic Management of dependencies, the latest language server will be downloaded automatically.
After completing the previous steps, restart your IDE.

 Note that if you can not find the path, the output of the plugin may specify the path of snyk-ls binaries:\
[Info] Snyk Language Server path: /Users/matthew/Library/Application Support/snyk-ls/snyk-ls_darwin_amd64
