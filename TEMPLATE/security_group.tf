# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/default_security_group

resource "aws_default_security_group" "default" {
  vpc_id      = module.vpc.vpc_id
  
  ingress = [
    {
      cidr_blocks      = []
      description      = "Internal Traffic"
      from_port        = 0
      to_port          = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = true
    },
    {
      cidr_blocks      = []
      description      = "Whitelist"
      from_port        = 0
      to_port          = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = ["REPLACE THIS WITH REAL PREFIX ID",]
      protocol         = "-1"
      security_groups  = []
      self             = false
    },
  ]

  egress = [
    {
      cidr_blocks      = ["0.0.0.0/0"]
      description      = ""
      from_port        = 0
      to_port          = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
    },
  ]

  tags = {
    "Environment" = var.tag_environment
    "Terraform"   = var.tag_terraform
    "Name"        = var.tag_vpc_name
  }
  
  tags_all = {
    "Environment" = var.tag_environment
    "Terraform"   = var.tag_terraform
    "Name"        = var.tag_vpc_name
  }
}