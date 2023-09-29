terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.18.1"
    }
  }
}

provider "aws" {
  region  = "ap-northeast-1"
  profile = "presales-aws"
  # profile = "coe-aws"
}
