This indicates that the required binaries are not available. To start the extension and use it, ensure that the following are available and executable:

Snyk Language Server (snyk-ls)
Snyk CLI

These are usually downloaded automatically by the extension. If downloading automatically is not possible, the Language Server will not start, and thus, it will not provide the commands being used to VS Code.
To resolve this problem, try the following:

Check to see if automatic download is activated and if it works.
Proxy/SSL problems could be the reason why the download does not finish.
Missing write permissions in the configured path could be another reason why automatic download does not work.
Before reaching out for help, check the following:
Secure debug logs (-d in additional parameters )
Configuration
Manual CLI run logs and information on the network:
Is there a proxy?
Is this an MITM proxy that intercepts SSL connections?
If yes, is the custom certificate authority available to the OS?


If automatic management of dependencies is not enabled, do the following:
Download the Language Server and the CLI manually.
Make them executable.
Provide the path to the binary in the Snyk settings in the corresponding fields.
