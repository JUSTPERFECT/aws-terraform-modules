resource "aws_route_table" "private_route_table" {
  count  = "${var.create_private_route ? var.private_route_table_count : 0}"
  vpc_id = "${var.vpc_id}"

  tags = {
    Name = "${var.private_routetable_name}${count.index}"
  }
}

resource "aws_route" "private_route_table" {
  count                  = "${var.nat_enabled ? var.private_route_table_count : 0}"
  route_table_id         = "${element(aws_route_table.private_route_table.*.id, count.index)}"
  destination_cidr_block = "${var.destination_cidr_block}"
  nat_gateway_id         = "${element(var.nat_gateway_ids, count.index)}"
}
