data "template_file" "cloud_config_amazon" {
  template = "${file("${path.module}/templates/common.sh.tpl")}"

  vars {
    custom_userdata = "${lookup(var.cluster_properties, "ec2_custom_userdata","")}"
  }
}

resource "aws_launch_configuration" "launch_config" {
  name_prefix                 = "${var.lc_name}"
  image_id                    = "${var.image_id}"
  instance_type               = "${lookup(var.cluster_properties, "ec2_instance_type")}"
  iam_instance_profile        = "${lookup(var.cluster_properties, "iam_instance_profile")}"
  key_name                    = "${lookup(var.cluster_properties, "ec2_key_name")}"
  security_groups             = ["${var.vpc_security_group_ids}"]
  associate_public_ip_address = "${var.associate_public_ip_address}"
  user_data                   = "${data.template_file.cloud_config_amazon.rendered}"
  ebs_optimized               = "${var.ebs_optimized}"
  ebs_block_device            = "${var.ebs_block_device}"
  ephemeral_block_device      = "${var.ephemeral_block_device}"
  root_block_device           = "${var.root_block_device}"

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "asg" {
  name                      = "${var.asg_name}"
  launch_configuration      = "${aws_launch_configuration.launch_config.id}"
  vpc_zone_identifier       = ["${var.subnet_ids}"]
  min_size                  = "${lookup(var.cluster_properties, "ec2_asg_min")}"
  max_size                  = "${lookup(var.cluster_properties, "ec2_asg_max")}"
  desired_capacity          = "${lookup(var.cluster_properties, "ec2_asg_desired")}"
  placement_group           = "${lookup(var.cluster_properties, "ec2_placement_group", "")}"
  health_check_grace_period = "${var.health_check_grace_period}"
  health_check_type         = "${var.health_check_type}"
  min_elb_capacity          = "${var.min_elb_capacity}"
  wait_for_elb_capacity     = "${var.wait_for_elb_capacity}"
  default_cooldown          = "${var.default_cooldown}"
  force_delete              = "${var.force_delete}"

  lifecycle {
    create_before_destroy = true
  }
}
