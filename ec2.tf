resource "aws_instance" "ec2" {
    ami                                  = data.aws_ami.windows2022.id

    instance_type                        = var.t3_nano
    associate_public_ip_address          = true
    security_groups                      = []
    subnet_id                            = aws_subnet.terraform-subnet.id
    tags                                 = {
        "Name" = "${var.project_tags}-ec2"
    }
    tags_all                             = {
        "Name" = "${var.project_tags}-ec2"
    }
}
