output "nacl_id" {
  description = "created NACL ID"
  value       = "${element(concat(aws_network_acl.network_acl.*.id, list("")), 0)}"
}
