output "internet_gateway_id" {
  description = "The Internet Gateway ID"
  value = "${element(concat(aws_internet_gateway.igw.*.id, list("")), 0)}"
}
