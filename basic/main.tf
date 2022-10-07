terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
    region = "eu-west-2"
}

resource "aws_instance" "instance" {
    ami             = "ami-0fb391cce7a602d1f"
    instance_type   = "t2.micro"
    security_groups = ["load-balancer-sec-group"] 
}
