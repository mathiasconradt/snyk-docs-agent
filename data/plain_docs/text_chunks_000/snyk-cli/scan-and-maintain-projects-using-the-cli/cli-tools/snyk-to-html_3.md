Follow these steps to create a build artifact by running snyk-to-html as part of a snyk test command. This streams the results directly to snyk-to-html.

Change the directory to the root folder of the repository you want to test.
To test the repository, export the results to a JSON format, and use the plugin to convert the output to an HTML file called results-[scantype].html.

The commands to use for each Snyk scanning method follow. When you run a command, an HTML file with one of the names in these examples is created in your repository folder, allowing you to view your test results in HTML format.
