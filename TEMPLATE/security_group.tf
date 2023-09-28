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
    
    # {
    #   cidr_blocks      = ["0.0.0.0/0"]
    #   description      = "ICMP"
    #   from_port        = -1
    #   to_port          = -1
    #   ipv6_cidr_blocks = []
    #   prefix_list_ids  = []
    #   protocol         = "icmp"
    #   security_groups  = []
    #   self             = false
      
    # },

    # {
    #   cidr_blocks      = ["0.0.0.0/0"]
    #   description      = "NDI Bridge"
    #   from_port        = 5990
    #   to_port          = 5990
    #   ipv6_cidr_blocks = []
    #   prefix_list_ids  = []
    #   protocol         = "udp"
    #   security_groups  = []
    #   self             = false
      
    #  },
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
    "Environment" = "dev"
    "Terraform"   = "true"
    "Name"        = "terraform-default"
  }
  
  tags_all = {
    "Environment" = "dev"
    "Terraform"   = "true"
    "Name"        = "terraform-default"
  }
}