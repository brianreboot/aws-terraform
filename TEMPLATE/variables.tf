# Environment Variables #
variable "tag_vpc_name" {
  description = "this is the name of the VPC"
  default     = "Brian Terraform"
}

variable "tag_terraform" {
  description = "additional tags"
  default     = "true"
}

variable "tag_environment" {
  description = "additional tags"
  default     = "Terraform Test"
}
