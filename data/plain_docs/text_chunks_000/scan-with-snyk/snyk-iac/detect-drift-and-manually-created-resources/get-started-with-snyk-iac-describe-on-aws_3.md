Create baseline
You ran snyk iac describe once and got a report of the current IaC coverage of your cloud infrastructure. When you are done fixing all the issues you identified and are left with known differences you are not planning to change, you can create a baseline so those differences will not be displayed in your next scan.
There are two options: ignore a specific resource or ignore multiple resources.
Ignore multiple resources
Use the output of the describe command and extract its results to update the .snyk excluded policies:
$ snyk iac describe --json --all | snyk iac update-exclude-policy
Ignore a specific resource
To ignore a specific resource, you must exclude it manually by editing the .snyk file and adding the resource details to the exclude list. For more information, see Ignore resources.
You are now ready to add snyk iac describe as a recurring cronjob to get alerts when a new resource is created outside of your IaC deployment.
