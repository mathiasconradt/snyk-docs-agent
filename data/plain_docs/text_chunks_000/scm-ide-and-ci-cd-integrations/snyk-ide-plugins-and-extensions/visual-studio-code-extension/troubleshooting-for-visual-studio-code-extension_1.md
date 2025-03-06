The Snyk extension for Visual Studio Code downloads the CLI so the extension can operate. When the extension cannot download the required version of the CLI from the configured release channel, one of the following may be the reason:

Network connectivity issues
Misconfigured release channel settings
Temporary unavailability of the requested CLI version

Follow these steps to resolve the issue:

Check your internet connection and proxy settings.
Verify the release channel configuration in the extension settings.
Try switching to a different release channel (for example, from stable to preview).
Restart Visual Studio Code and attempt to reinstall the extension.
If the problem persists, check for any known issues or updates on the Snyk GitHub VS Code repository
