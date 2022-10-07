terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}

module "sec-group" {
  source = "./security-group"
}

module "custom_instance" {
    source = "./awsinstance"
    ami_id = "${var.toplevel_amiid}"
    key = "${var.toplevel_key}"
    sec_group = [module.sec_group.sec_group_id]
}