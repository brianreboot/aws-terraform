// Name of VPC tags for this project 
variable "project_tags" {
  default = "terraform2"
}

// VPC CIDR for this project 
variable "vpc-cidr" {
  default = "10.11.0.0/16"
}

// Subnet CIDR for this VPC 
variable "subnet-cidr" {
  default = "10.11.0.0/24"
}

///////////////////////////////


// Name of Instances for this project 
variable "instance_tags" {
  default = "instance2"
}

///////////////////////////////