resource "aws_route_table_association" "route_table_association" {
  count          = "${var.association_count}"
  subnet_id      = "${element(var.subnet_ids, count.index)}"
  route_table_id = "${element(var.route_table_ids, count.index)}"
}
