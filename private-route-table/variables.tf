variable "vpc_id" {
  description = "ID of VPC where route table to be deployed"
  default     = ""
}

variable "create_private_route" {
  description = "if true, private route table will be created"
  default     = true
}

variable "nat_enabled" {
  description = "whether nat gateway enabled or not"
  default     = false
}

variable "nat_gateway_ids" {
  description = "ID of the nat gateway incase of private route"
  type  = "list"
  default     = []
}

variable "private_routetable_name" {
  description = "Name of the route table"
  default     = ""
}

variable "destination_cidr_block" {
  description = "cidr block range of route to create"
  default     = "0.0.0.0/0"
}
variable "private_route_table_count" {
  description = "Number of private route tables to be created"
  default = 1
}

