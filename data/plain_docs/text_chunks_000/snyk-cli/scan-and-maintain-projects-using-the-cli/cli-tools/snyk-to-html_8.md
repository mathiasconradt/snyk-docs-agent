For automation purposes, you may be creating a JSON file for programmatic access to the results or already have one from a previous scan. You can send this JSON output to snyk-to-html to generate an HTML file.
Follow these steps to run snyk test and then convert the output file to HTML.

Change the directory to the root folder of the repository you want to test.

Run the appropriate test command for each product as shown:\
    snyk test --json-file-output=results-opensource.json
snyk code test --json-file-output=results-code.json
snyk container test [image] --json-file-output=results-container.json
snyk iac test  --json-file-output=results-iac.json
\
If an exit code stops the process before piping the output to the tool, refer to the note that follows these steps.
3. Pass the JSON file to snyk-to-html to be converted to HTML. The input files should be valid JSON and use UTF-8 encoding. Ensure you use the name of the output file you generated:\
   snyk-to-html -i results-opensource.json -o results-opensource.html\
   snyk-to-html -i results-code.json -o results-code.html\
   snyk-to-html -i results-container.json -o results-container.html\
   snyk-to-html -i results-iac.json -o results-iac.html



When you use a multi-step approach like snyk test --json > result-opensource.json and then pass the results to a plugin, the exit code may stop or break the process on your build system before you get to the step of passing the output file to a tool like snyk-to-html or snyk-filter. You have several options, depending on the capabilities of your build tools:\
\
1) Capture the exit code in a parameter to prevent it from being returned to the process in addition to checking for an error state.\
2) Use ||true or some form of logic to prevent the exit code from terminating the process.\
Note that when you do this, any return code is ignored, such as error codes signifying network or Snyk platform issues or another non-scan result issue. The next step in using the JSON is likely to fail. It is recommended that you review the exit code before you proceed to the next step in your script.\
3) Set the step to continue on failure, if such an option exists.
