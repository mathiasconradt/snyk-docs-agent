In the following example, we are using local and input variables together with a conditional expression.
We are checking to see if local.test equals 0, and we are setting the cidr_blocks accordingly.
In our case local.test equals 0, and the value is set to the value of var.remote_user_addr which causes the CLI to raise an issue.
```hcl
vpc.tf
resource "aws_security_group_rule" "ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = local.test == 0 ? [var.remote_user_addr] : ["11.0.0.0/24"]
  security_group_id = aws_security_group.allow.id
}
locals {
  test = 0
}
```
```hcl
variables.tf
variable "remote_user_addr" {
  type = string
  default = "0.0.0.0/0"
}
```
