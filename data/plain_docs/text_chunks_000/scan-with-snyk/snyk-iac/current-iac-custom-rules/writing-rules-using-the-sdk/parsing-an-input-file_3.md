Another example is the following Terraform Plan JSON Output file, returned by the terraform show -json ./plan/example.json.tfplan command:

{
  "format_version": "0.2",
  "terraform_version": "1.0.11",
  "planned_values": {
    "root_module": {
      "resources": [
        {
          "address": "aws_vpc.example",
          "mode": "managed",
          "type": "aws_vpc",
          "name": "example",
          "provider_name": "registry.terraform.io/hashicorp/aws",
          "schema_version": 1,
          "values": {
            "assign_generated_ipv6_cidr_block": false,
            "cidr_block": "10.0.0.0/16",
            "enable_dns_support": true,
            "instance_tenancy": "default",
            "tags": null
          },
          "sensitive_values": {
            "tags_all": {}
          }
        }
      ]
    }
  },
  "resource_changes": [
    {
      "address": "aws_vpc.example",
      "mode": "managed",
      "type": "aws_vpc",
      "name": "example",
      "provider_name": "registry.terraform.io/hashicorp/aws",
      "change": {
        "actions": [
          "create"
        ],
        "before": null,
        "after": {
          "assign_generated_ipv6_cidr_block": false,
          "cidr_block": "10.0.0.0/16",
          "enable_dns_support": true,
          "instance_tenancy": "default",
          "tags": null
        },
        "after_unknown": {
          "arn": true,
          "default_network_acl_id": true,
          "default_route_table_id": true,
          "default_security_group_id": true,
          "dhcp_options_id": true,
          "enable_classiclink": true,
          "enable_classiclink_dns_support": true,
          "enable_dns_hostnames": true,
          "id": true,
          "ipv6_association_id": true,
          "ipv6_cidr_block": true,
          "main_route_table_id": true,
          "owner_id": true,
          "tags_all": true
        },
        "before_sensitive": false,
        "after_sensitive": {
          "tags_all": {}
        }
      }
    }
  ],
  "configuration": {
    "provider_config": {
      "aws": {
        "name": "aws",
        "expressions": {
          "region": {
            "constant_value": "us-east-1"
          }
        }
      }
    },
    "root_module": {
      "resources": [
        {
          "address": "aws_vpc.example",
          "mode": "managed",
          "type": "aws_vpc",
          "name": "example",
          "provider_config_key": "aws",
          "expressions": {
            "cidr_block": {
              "constant_value": "10.0.0.0/16"
            }
          },
          "schema_version": 1
        }
      ]
    }
  }
}

To get the equivalent JSON format, run the parse command:
snyk-iac-rules parse example.json.tfplan --format=tf-plan
This prints out the JSON, which you can use as guidance for writing your rules:
{
    "data": {},
    "resource": {
        "aws_vpc": {
            "example": {
                "assign_generated_ipv6_cidr_block": false,
                "cidr_block": "10.0.0.0/16",
                "enable_dns_support": true,
                "instance_tenancy": "default",
                "tags": null
            }
        }
    }
}
In Rego, accessing the tags field would look like this:
input.resource.aws_vpc.example.tags
