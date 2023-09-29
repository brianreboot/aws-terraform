##### VARIABLES #####
variable "instance_count" {
  description = "how many instances are required?"
  default     = "1"
}

variable "tag_instance_name" {
  description = "name of the ec2 instance"
  default     = "ec2-instance"
}
##### VARIABLES #####

resource "aws_instance" "instance1" {
    count                       = var.instance_count
    ami                         = "REPLACE THIS WITH THE REAL AMI"
    instance_type               = "t3.nano"
    associate_public_ip_address = true
    security_groups             = []
    subnet_id                   = element(module.vpc.public_subnets, 0)
    
    tags       = {
        "Name" = var.tag_instance_name
    }
    
    tags_all   = {
        "Name" = var.tag_instance_name
    }
}

##############################################################
# Uncomment if you want to EIP associated with this instance #
##############################################################

resource "aws_eip" "eip" {
  count    = var.instance_count
  instance = aws_instance.instance1[count.index].id
  domain   = "vpc"

  tags = {
    Name        = var.tag_instance_name
    Terraform   = var.tag_terraform
    Environment = var.tag_environment
  }
}