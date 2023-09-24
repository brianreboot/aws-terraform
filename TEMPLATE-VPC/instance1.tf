resource "aws_instance" "instance1" {
    count                       = 1
    ami                         = data.aws_ami.windows2022.id
    instance_type               = "t3.nano"
    associate_public_ip_address = true
    security_groups             = []
    subnet_id                   = aws_subnet.terraform-subnet.id
    
    tags       = {
        "Name" = "instance1"
    }
    
    tags_all   = {
        "Name" = "instance1"
    }

}