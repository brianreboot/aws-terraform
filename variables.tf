variable "t3_nano" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "t3_micro" {
  description = "Type of EC2 instance to provision"
  default     = "t3.micro"
}

variable "t3_xlarge" {
  description = "Type of EC2 instance to provision"
  default     = "t3.xlarge"
}

variable "osaka" {
  description = "Deploy in the Osaka Region"
  default     = "ap-northeast-3"
}

variable "project_tags" {
  description = "Deploy in the Osaka Region"
  default     = "terraform"
}