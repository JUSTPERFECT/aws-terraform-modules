variable "vpc_id" {
  description = "ID of VPC where route table to be deployed"
  default     = ""
}

variable "create_public_route" {
  description = "if true, public route table will be created"
  default     = true
}

variable "igw_enabled" {
  description = "whether internet gateway enabled or not"
  default     = false
}

variable "internet_gateway_id" {
  description = "ID of the internet gateway incase of public route"
  default     = ""
}

variable "public_routetable_name" {
  description = "Name of the route table"
  default     = ""
}

variable "destination_cidr_block" {
  description = "cidr block range of route to create"
  default     = "0.0.0.0/0"
}
variable "public_route_table_count" {
  description = "number of public route tables to be created"
  default = 1
}

