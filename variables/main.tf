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
    ami           = var.ami-id
    instance_type = var.instance-type
    key_name      = var.pem-key
}