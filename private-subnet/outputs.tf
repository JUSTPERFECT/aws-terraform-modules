output "private_subnet_ids" {
  description = "private subnet IDs"
  value = ["${module.private_subnet.subnet_ids}"]
}

output "private_subnet_cidr_blocks" {
  description = "private subnet CIDRs"
  value = ["${module.private_subnet.subnet_cidr_blocks}"]
}

output "private_subnet_availability_zone_outs" {
  description = "private subnet availability zones"
  value = ["${module.private_subnet.subnet_availability_zones}"]
}
