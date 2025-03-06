When you enable debug, your code may be logged in the IDE log files, for example, the idea.log file.

You can find the logs for VS Code in the output channels for the Snyk extension and Snyk Language Server. Both are needed for troubleshooting.
To enable the debug log level, start VS Code from the terminal like this:
cd your-repo SNYK_LOG_LEVEL=debug code .
Alternatively, you can add -d to additional parameters in the Snyk settings.
You can obtain additional logs by navigating to Help, Toggle Developer Tools, and selecting the Output tab to see additional output. From the list displayed, select the Snyk Security channel and then the Snyk Language Server channel to see the debugging information.
The Snyk Security channel has information on the extension itself. The Snyk Language Language Server channel receives the Language Server logs, displaying everything that is going on inside the Language Server and the CLI when you are using the extension.
Obtain more information
