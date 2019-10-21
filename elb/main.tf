resource "aws_elb" "elb" {
  count                       = "${var.create_elb ? 1 : 0}"
  name                        = "${var.elb_name}"
  subnets                     = ["${var.subnet_ids}"]
  internal                    = "${var.elb_internal}"
  security_groups             = ["${var.security_groups}"]
  cross_zone_load_balancing   = "${var.cross_zone_load_balancing}"
  idle_timeout                = "${var.idle_timeout}"
  connection_draining         = "${var.connection_draining}"
  connection_draining_timeout = "${var.connection_draining_timeout}"
  listener                    = ["${var.listener}"]
  access_logs                 = ["${var.access_logs}"]
  health_check                = ["${var.health_check}"]
}
