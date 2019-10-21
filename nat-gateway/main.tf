resource "aws_eip" "nat_gateway_ip" {
  count = "${var.nat_count}"
  vpc   = true

  tags = {
    Name = "${var.eip_name}${count.index}"
  }
}

resource "aws_nat_gateway" "nat_gateway" {
  count         = "${var.nat_count}"
  allocation_id = "${element(aws_eip.nat_gateway_ip.*.id, count.index)}"
  subnet_id     = "${element(var.subnet_ids, count.index)}"

  tags = {
      Name="${var.nat_gateway_name}${count.index}"
  }
}
