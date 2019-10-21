resource "aws_internet_gateway" "igw" {
  count  = "${var.igw_enabled ? 1 : 0}"
  vpc_id = "${var.vpc_id}"

  tags = {
    Name = "${var.igw_name}"
  }
}
