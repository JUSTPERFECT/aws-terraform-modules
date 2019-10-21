output "public_subnet_ids" {
  description = "public subnet IDs"
  value       = ["${module.public_subnet.subnet_ids}"]
}

output "public_subnet_cidr_blocks" {
  description = "public subnet cidr blocks"
  value       = ["${module.public_subnet.subnet_cidr_blocks}"]
}

output "public_subnet_availability_zones" {
  description = "public subnet availability zones"
  value       = ["${module.public_subnet.subnet_availability_zones}"]
}
