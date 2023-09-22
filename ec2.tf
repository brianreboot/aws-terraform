resource "aws_instance" "ec2" {
    ami                                  = data.aws_ami.windows2022.id
    # availability_zone                    = "ap-northeast-3a"
    instance_type                        = var.t3_nano
    associate_public_ip_address          = true
    security_groups                      = []
    subnet_id                            = aws_subnet.terraform-subnet.id
    tags                                 = {
        "Name" = "terraform-ec2"
    }
    tags_all                             = {
        "Name" = "terraform-ec2"
    }
}
