// Instance Type
variable "ec2_instance" {
  default = "t3.nano"
}

// Instance Name 
variable "instance_tags" {
  default = "instance1"
}

resource "aws_instance" "ec2" {
    count                       = 1
    ami                         = data.aws_ami.windows2022.id
    instance_type               = var.ec2_instance
    associate_public_ip_address = true
    security_groups             = []
    subnet_id                   = aws_subnet.terraform-subnet.id
    
    tags       = {
        "Name" = var.instance_tags
    }
    
    tags_all   = {
        "Name" = var.instance_tags
    }

}