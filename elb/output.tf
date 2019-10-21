output "classic_elb_id" {
  description = "The name of the ELB"
  value       = "${element(concat(aws_elb.elb.*.id, list("")), 0)}"
}

output "classic_elb_arn" {
  description = "The ARN of the ELB"
  value       = "${element(concat(aws_elb.elb.*.arn, list("")), 0)}"
}

output "classic_elb_name" {
  description = "The name of the ELB"
  value       = "${element(concat(aws_elb.elb.*.name, list("")), 0)}"
}

output "classic_elb_dns_name" {
  description = "The DNS name of the ELB"
  value       = "${element(concat(aws_elb.elb.*.dns_name, list("")), 0)}"
}

output "classic_elb_instances" {
  description = "The list of instances in the ELB"
  value       = ["${aws_elb.elb.*.instances}"]
}

output "classic_elb_source_security_group_id" {
  description = "The ID of the security group that you can use as part of your inbound rules for your load balancer's back-end application instances"
  value       = "${element(concat(aws_elb.elb.*.source_security_group_id, list("")), 0)}"
}

output "classic_elb_zone_id" {
  description = "The canonical hosted zone ID of the ELB (to be used in a Route 53 Alias record)"
  value       = "${element(concat(aws_elb.elb.*.zone_id, list("")), 0)}"
}
