output "private_route_table_ids" {
  description = "private route table IDs"
  value       = ["${aws_route_table.private_route_table.*.id}"]
}
