Snyk scans the Google Cloud Project specified by the project_id variable in the Terraform template. You must set the variable's value using one of the following methods:

Set the project_id variable directly in the Terraform template. On line 4 of the template, change the default value of the project_id variable to your Project ID:

default = "your-project-id"

Set the project_id variable when you apply the Terraform. In the following section, Apply  Terraform, you will apply Terraform to create the Google service account. At that time, you can use Terraform's -var option to set the project_id variable to your Project ID:

terraform apply -var="project_id=your-project-id"

Use the GOOGLE_PROJECT environment variable. See Terraform's documentation.
