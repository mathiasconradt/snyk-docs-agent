Example configuration for Sublime Text
```
// Settings in here override those in "LSP/LSP.sublime-settings"
{
  // Show permanent language server status in the status bar.
  "show_view_status": true,
// Language server configurations
  "clients": {
    "snyk": {
      // enable this configuration
      "enabled": true,
      "command": [
        "/usr/local/bin/snyk-ls", // path to the downloaded binary
        "-l", // define log level
        "info", // level info
        "-f", // file logging
        "/path/to/log/dir/snyk-ls-sublime.log" // log file
      ],
      // the selector that selects which type of buffers this language server attaches to
      "selector": "source", // all file types
      "initializationOptions": {
        "activateSnykCode":"true", // Enable Snyk Code
        "token": "xxx" // Set your Snyk Token to not authenticate on every start
      }
    },
  },
}
```
After opening a supported file, the Language Server should be started by Sublime Text and findings will be highlighted.
