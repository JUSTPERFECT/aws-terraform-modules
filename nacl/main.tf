resource "aws_network_acl" "network_acl" {
  count      = "${var.create_nacl ? 1 : 0}"
  vpc_id     = "${var.vpc_id}"
  subnet_ids = ["${var.subnet_ids}"]

  tags = {
   Name="${var.nacl_name}"
  }
}

resource "aws_network_acl_rule" "network_acl_rule" {
  count          = "${var.create_nacl ? length(var.network_acl_rules) : 0}"
  network_acl_id = "${aws_network_acl.network_acl.id}"
  rule_number    = "${lookup(var.network_acl_rules[count.index], "rule_number")}"
  egress         = "${lookup(var.network_acl_rules[count.index], "egress")}"
  protocol       = "${lookup(var.network_acl_rules[count.index], "protocol")}"
  rule_action    = "${lookup(var.network_acl_rules[count.index], "rule_action")}"
  cidr_block     = "${lookup(var.network_acl_rules[count.index], "cidr_block")}"
  from_port      = "${lookup(var.network_acl_rules[count.index], "from_port")}"
  to_port        = "${lookup(var.network_acl_rules[count.index], "to_port")}"
}
