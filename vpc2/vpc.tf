// Create VPC
resource "aws_vpc" "terraform-vpc" {
    assign_generated_ipv6_cidr_block     = false
    cidr_block                           = var.vpc-cidr
    enable_dns_hostnames                 = true
    enable_dns_support                   = true
    enable_network_address_usage_metrics = false
    instance_tenancy                     = "default"
    
    tags       = {
        "Name" = "${var.project_tags}-vpc"
    }
    tags_all   = {
        "Name" = "${var.project_tags}-vpc"
    }
}

// Create VPC Subnet
resource "aws_subnet" "terraform-subnet" {
  vpc_id               = aws_vpc.terraform-vpc.id
  cidr_block           = var.subnet-cidr

  tags   = {
    Name = "${var.project_tags}-subnet"
  }
}

// Create Internet Gateway
resource "aws_internet_gateway" "terraform-gw" {
  vpc_id = aws_vpc.terraform-vpc.id

  tags   = {
    Name = "${var.project_tags}-gw"
  }
}

// Create Route Table
resource "aws_route_table" "terraform-rtb" {
  vpc_id = aws_vpc.terraform-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.terraform-gw.id
  }

  tags   = {
    Name = "${var.project_tags}-rtb"
  }
}

// Associate Subnet to the Route Table
resource "aws_route_table_association" "terraform-rtb-association" {
  subnet_id      = aws_subnet.terraform-subnet.id
  route_table_id = aws_route_table.terraform-rtb.id
}