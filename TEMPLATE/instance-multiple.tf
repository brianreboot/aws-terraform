# #######################################
# # THIS MODULE WILL CREATE 3 INSTANCES #
# #######################################

# module "ec2_instance" {
#   source  = "terraform-aws-modules/ec2-instance/aws"
  
#   for_each = toset(["one", "two", "three"])
#   name     = "instance-${each.key}"

#   ami                         = data.aws_ami.windows2022.id
#   instance_type               = "t2.micro"
#   monitoring                  = false
#   subnet_id                   = element(module.vpc.public_subnets, 0)
#   associate_public_ip_address = true

#   tags = {
#     Terraform   = "true"
#     Environment = "dev"
#   }
# }