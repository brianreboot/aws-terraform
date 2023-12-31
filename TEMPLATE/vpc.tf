module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.tag_vpc_name
  cidr = "10.0.0.0/16"

  azs             = ["ap-northeast-1a", "ap-northeast-1c", "ap-northeast-1d"]
# private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway            = false
  enable_vpn_gateway            = false
  map_public_ip_on_launch       = true
  manage_default_security_group = false
  manage_default_network_acl    = false

  tags = {
    Terraform   = var.tag_terraform
    Environment = var.tag_environment
  }
}
