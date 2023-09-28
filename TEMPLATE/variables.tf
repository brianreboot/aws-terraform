# EC2 Instance Variables #
variable "instance_count" {
  default     = "3"
}

variable "tag_instance_name" {
  default     = "ec2-instance"
}

# Environment Variables #
variable "tag_vpc_name" {
  default     = "Brian Terraform"
}

variable "tag_terraform" {
  default     = "true"
}

variable "tag_environment" {
  default     = "Terraform Test"
}
