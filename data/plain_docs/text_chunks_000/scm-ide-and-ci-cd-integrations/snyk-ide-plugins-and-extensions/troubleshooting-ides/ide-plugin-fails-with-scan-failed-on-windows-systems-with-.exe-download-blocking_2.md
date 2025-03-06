The preferred solution for this is to allowlist downloads.snyk.io and static.snyk.io in the baseline policy for .exe files, so that downloads from this location are exempt from .exe popup approvals for all users. 
You can use the following temporary solutions in the interim if the preferred solution will take time to approve. 

Manually download the relevant .exe file directly from either Snyk CLI Releases or Snyk Language Server Releases, and place it in the location listed in your plugin settings. Ensure that you turn off the option to Automatically Manage Dependencies.

or

If the CLI exe is downloaded, you can use it to provide the language server function. Redirect the language server location to the CLI location in the plugin settings, and ensure that you turn off the option to Automatically Manage Dependencies.
