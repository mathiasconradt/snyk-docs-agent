Variable handling in the correct precedence
In the example that follows, we see that we configured a new resource, and we are using a variable named remote_user_addr to set its cidr_blocks value.
The variable is defined inside the variables.tf file with a default value, but the value is being overridden inside the terraform.tfvars file.
At the end, the value is set to 0.0.0.0/0, and this causes the CLI to raise an issue.
```hcl
vpc.tf
resource "aws_security_group_rule" "ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = [var.remote_user_addr]
  security_group_id = aws_security_group.allow.id
}
```
```hcl
variables.tf
variable "remote_user_addr" {
  type = string
  default = "11.0.0.0/24"
}
```
```hcl
terraform.tfvars
remote_user_addr = "0.0.0.0/0"
```
