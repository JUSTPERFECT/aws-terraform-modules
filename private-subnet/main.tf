module "private_subnet" {
  source                  = "./../subnet"
  vpc_id                  = "${var.vpc_id}"
  subnet_cidr_blocks      = ["${var.private_subnet_cidr_blocks}"]
  availability_zones      = ["${var.availability_zones}"]
  map_public_ip_on_launch = "false"
  subnet_name             = "${var.private_subnet_name}"
}
