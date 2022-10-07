variable "ami_id" {
  default = "ami-0fb391cce7a602d1f"
}

variable "eph_block_size" {
  default = 8
}

variable "inst_type" {
  default = "t2.micro"
}

variable "key" {
  default = "unknown"
}

variable "sec_group" {
  default = "default"
}