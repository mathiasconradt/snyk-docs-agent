Usage
snyk monitor [<OPTIONS>]
Description
The snyk monitor command creates a project in your Snyk account to be continuously monitored for open-source vulnerabilities and license issues, sending the results to snyk.io
Use the monitor command before integrating a project into production, to take a snapshot of the code to be monitored in order to avoid pushing vulnerabilities into production. Choose a test frequency in your Settings if you want to change the frequency from the default, which is daily.
A PR check will also do a test.
After running the snyk monitor command, log in to the Snyk website and view your projects to see the monitor.
If you make changes to your code, you must run the monitor command again.
For Snyk Container, see snyk container help
The monitor command is not supported for Snyk Code.
For Snyk Infrastructure as Code follow the instructions in "Regularly testing IaC files" on Snyk CLI for IaC
