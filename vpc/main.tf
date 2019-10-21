resource "aws_vpc" "vpc" {
  count                = "${var.create_vpc ? 1 : 0}"
  cidr_block           = "${var.vpc_cidr_block}"
  enable_dns_support   = "${var.enable_dns_support}"
  enable_dns_hostnames = "${var.enable_dns_hostnames}"

  tags = {
    Name = "${var.vpc_name}"
  }
}

resource "aws_flow_log" "vpc_flow_log" {
  count           = "${var.create_vpc ? 1 : 0}"
  log_destination = "${aws_cloudwatch_log_group.flow_log.arn}"
  iam_role_arn    = "arn:aws:iam::${var.account}:role/${var.vpc_flowlog_role}"
  vpc_id          = "${aws_vpc.vpc.id}"
  traffic_type    = "ALL"
}

resource "aws_cloudwatch_log_group" "flow_log" {
  count             = "${var.create_vpc ? 1 : 0}"
  name_prefix       = "${var.vpc_flow_loggroup_name}"
  retention_in_days = 365
}
