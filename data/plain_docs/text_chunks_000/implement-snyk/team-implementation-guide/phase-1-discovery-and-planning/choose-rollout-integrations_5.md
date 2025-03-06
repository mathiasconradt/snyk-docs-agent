Infrastructure as Code
For Snyk Infrastructure as Code, it is common that your Terraform or yaml configuration files are held in your SCM, but they may be in a separate area or repository. As a result, consider if there are other areas you need to import. You may also want to integrate with Terraform Cloud (if applicable) to enable Snyk tests as part of your "Terraform run" processes.
For complex environments, modules, and highly templated implementations, utilizing the CLI on your Terraform Plan file may provide the best results.
