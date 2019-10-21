output "public_route_table_ids" {
  description = "public route table IDs"
  value       = ["${aws_route_table.public_route_table.*.id}"]
}
