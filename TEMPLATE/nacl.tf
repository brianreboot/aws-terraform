# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/default_network_acl
# tcp is protocol 6
# udp is protocol 17

resource "aws_default_network_acl" "default" {
    default_network_acl_id = module.vpc.default_network_acl_id

    tags                   = {
        "Environment" = var.tag_environment
        "Terraform"   = var.tag_terraform
        "Name"        = var.tag_vpc_name
    }
    tags_all               = {
        "Environment" = var.tag_environment
        "Terraform"   = var.tag_terraform
        "Name"        = var.tag_vpc_name
    }

    ingress {
        rule_no    = 100
        action     = "allow"
        cidr_block = "0.0.0.0/0"
        from_port  = 0
        to_port    = 0
        icmp_code  = 0
        icmp_type  = 0
        protocol   = "-1"
        }

    egress {
        rule_no    = 100
        action     = "allow"
        cidr_block = "0.0.0.0/0"
        from_port  = 0
        to_port    = 0
        icmp_code  = 0
        icmp_type  = 0
        protocol   = "-1"
    }
}