Infrastructure as Code integration
For Snyk Infrastructure as Code, it is common that your Terraform or YAML configuration files are held in your SCM, but they may be in a separate area or repository. Thus, consider whether there are other areas you need to import. You may also want to integrate with Terraform Cloud if applicable, to enable Snyk tests as part of your terraform run processes.
For complex environments, modules, and highly templated implementations, using the CLI on your Terraform Plan file may provide the best results.
