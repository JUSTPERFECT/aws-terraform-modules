module "public_subnet" {
  source                  = "./../subnet"
  vpc_id                  = "${var.vpc_id}"
  subnet_cidr_blocks      = ["${var.public_subnet_cidr_blocks}"]
  availability_zones      = ["${var.availability_zones}"]
  map_public_ip_on_launch = "true"
  subnet_name             = "${var.public_subnet_name}"
}
