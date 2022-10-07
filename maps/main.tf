terraform {
  required_providers {
    aws = {
      source      = "hashicorp/aws"
    }
  }
}

provider "aws" {
    region        = "eu-west-2"
}

resource "aws_instance" "EC2" {
    ami           = lookup(var.images, "eu-west-1", "not found")
    instance_type = "t2.micro"
}