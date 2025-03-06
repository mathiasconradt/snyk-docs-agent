For general troubleshooting, see the IDE troubleshooting pages.
Logs

When you enable debug, your code may be logged in the IDE log files, for example, the idea.log file.

To determine where plugin logs are stored, navigate to Preferences > Language Servers > Logs and find the Snyk Language Server row in Eclipse. As the Language Server can be disabled, you may need to enable it to retrieve the logs. You will find the logs either in the console or in the file based on the preference set.
To see additional plugin error logs:

Navigate to Window > Show View > Others....
In type text filer, search for Error Log.
Click Open to see the error log tab. If you group the tab view by plugin (three dots menu in the top right corner > Group By > Plug-in), the io.snyk.eclipse.plugin row shows any plugin errors.

The log level can be set in the Eclipse settings using the environment variable SNYK_LOG_LEVEL , for example,SNYK_LOG_LEVEL=debug.
Determine the installation path of the Language Server, as displayed in the plugin settings. The Language Server logs can be found in the same directory with the file name snyk-ls.log
When working on the terminal, be careful to escape spaces in the folder path.
