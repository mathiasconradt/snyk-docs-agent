Take, for example, the following Terraform file:

resource "aws_redshift_cluster" "example" {
  cluster_identifier = "tf-redshift-cluster"
  database_name      = "mydb"
  master_username    = "foo"
  master_password    = "Mustbe8characters"
  node_type          = "dc1.large"
  cluster_type       = "single-node"
}

To get the equivalent JSON format, run the parse command:
snyk-iac-rules parse example.tf --format hcl2
This prints out the JSON, which you can use as guidance for writing your rules:
{
    "resource": {
        "aws_redshift_cluster": {
            "example": {
                "cluster_identifier": "tf-redshift-cluster",
                "cluster_type": "single-node",
                "database_name": "mydb",
                "master_password": "Mustbe8characters",
                "master_username": "foo",
                "node_type": "dc1.large"
            }
        }
    }
}
In Rego, accessing the node_type field would look like this:
input.resource.aws_redshift_cluster.example.node_type
