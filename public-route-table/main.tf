resource "aws_route_table" "public_route_table" {
  count  = "${var.create_public_route ? var.public_route_table_count : 0}"
  vpc_id = "${var.vpc_id}"

  tags = {
    Name = "${var.public_routetable_name}${count.index}"
  }
}

resource "aws_route" "public_route_table" {
  count                  = "${var.igw_enabled ? var.public_route_table_count : 0}"
  route_table_id         = "${element(aws_route_table.public_route_table.*.id, count.index)}"
  destination_cidr_block = "${var.destination_cidr_block}"
  gateway_id             = "${var.internet_gateway_id}"
}
