output "nat_gateway_ids" {
  description = "NAT gateway ID's for each subnet"
  value       = ["${aws_nat_gateway.nat_gateway.*.id}"]
}

output "nat_elastic_ips" {
  description = "NAT elastic IP for each subnet"
  value       = ["${aws_eip.nat_gateway_ip.*.id}"]
}

output "nat_gateway_public_ips" {
  description = "NAT gateway public IP for each subnet"
  value       = ["${aws_nat_gateway.nat_gateway.*.public_ip}"]
}

output "nat_gateway_private_ips" {
  description = "NAT gateway private IP for each subnet"
  value       = ["${aws_nat_gateway.nat_gateway.*.private_ip}"]
}
