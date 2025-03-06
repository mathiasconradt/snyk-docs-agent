```

snyk iac test myproject --report

Testing arm-file.tf...
Infrastructure as code issues:
  ✗ VM Agent is not provisioned automatically for Windows [Low Severity] [SNYK-CC-AZURE-667] in Compute
    introduced by resource > azurerm_virtual_machine[my_terraformvm] > os_profile_windows_config > provision_vm_agent
Organization:      my.org
Type:              Terraform
Target file:       arm-file.tf
Project name:      myproject
Open source:       no
Project path:      myproject
Tested arm-file.tf for known issues, found 1 issues
Your test results are available at: https://app.snyk.io/org/my.org/projects under the name myproject
```
This sends a snapshot of your current configuration issues to your Snyk dashboard for viewing in the Snyk Web UI.
