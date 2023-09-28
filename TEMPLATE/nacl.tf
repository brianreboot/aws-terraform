# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/default_network_acl
# tcp is protocol 6
# udp is protocol 17

resource "aws_default_network_acl" "default" {
    default_network_acl_id = module.vpc.default_network_acl_id

    tags                   = {
        "Environment" = "dev"
        "Name"        = "terraform-default"
        "Terraform"   = "true"
    }
    tags_all               = {
        "Environment" = "dev"
        "Name"        = "terraform-default"
        "Terraform"   = "true"
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

    ingress {
        rule_no    = 101
        action     = "deny"
        ipv6_cidr_block = "::/0"
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

     egress {
        rule_no    = 101
        action     = "deny"
        ipv6_cidr_block = "::/0"
        from_port  = 0
        to_port    = 0
        icmp_code  = 0
        icmp_type  = 0
        protocol   = "-1"
    }
}