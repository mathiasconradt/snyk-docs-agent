The CLI provides a direct or automated way to fail the build and, by default, provides only summary information unless you use the --json or --sarif format.  You can direct this output to a file; these files include the issues discovered. The formats are not human-readable.
You can use snyk-to-html (the Snyk JSON to HTML Mapper) to:

Create a readable build artifact as part of the output of a scan
Create an HTML report of the full context of a vulnerability that you can view in a browser

This page explains how to install snyk-to-html, use the snyk-to-html tool to export the test results in JSON or SARIF format to an HTML file, and view the test results in a browser.

Note, only json output is supported for Open Source (SCA) scans. sarif output will return no results from the snyk-to-html process for Open Source tests.
