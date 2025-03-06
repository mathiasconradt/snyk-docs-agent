Usage
snyk container monitor [<OPTIONS>] [<IMAGE>]
Description
The snyk container monitor command captures the container image layers and dependencies in a project and monitors that snapshot for vulnerabilities, sending the results to snyk.io
Use the container monitor command before integrating your code into production, to take a snapshot of the code to be monitored in order to avoid pushing vulnerabilities into production. Choose a test frequency in your Settings if you want to change the frequency from the default, which is daily.
If you make changes to your code, you must run the container monitor command again.
For more information, see Snyk CLI for container security
