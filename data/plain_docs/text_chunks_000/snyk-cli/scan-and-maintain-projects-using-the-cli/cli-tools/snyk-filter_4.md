Implement your custom jq filters in a .snyk-filter/snyk.yml file relative to your current working directory where you are running snyk test. See sample-filters and tweak things from there; use JQPlay
Then pipe your snyk test --json output into snyk-filter or use the -i argument to input a JSON file. Use the -f argument to point to the yml file containing your custom filters if you are not using the default location (.snyk-filter/snyk.yml).
The exit code from snyk-filter is 0 for pass (no issues) and 1 for fail (issues found).


When you use a multi-step approach like snyk test --json > result-opensource.json and then pass the results to a plugin, the exit code may stop or break the process on your build system before you get to the step of passing the output file to a tool like snyk-to-html or snyk-filter. You have several options, depending on the capabilities of your build tools:\
\
1) Capture the exit code in a parameter to prevent it from being returned to the process in addition to checking for an error state.\
2) Use ||true or some form of logic to prevent the exit code from terminating the process.\
Note that when you do this, any return code is ignored, such as error codes signifying network or Snyk platform issues or another non-scan result issue. The next step in using the JSON is likely to fail. It is recommended that you review the exit code before you proceed to the next step in your script.\
3) Set the step to continue on failure, if such an option exists.
