resource "aws_instance" "tf-instance" {
  ami           = "${var.ami_id}"
  instance_type = "${var.inst_type}"
  key_name      = "${var.key}"
  vpc_security_group_ids = ["${var.sec_group}"]
  root_block_device { volume_size = "${var.eph_block_size}"}
}