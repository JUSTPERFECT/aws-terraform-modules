variable "nat_count" {
  description = "number of NAT gateways to create"
  default = 2
}

variable "subnet_ids" {
  description = "ID of Subnet where NAT gateway to be deployed"
  type        = "list"
  default     = []
}

variable "nat_gateway_name" {
  description = "Name of the NAT gateway"
  default     = ""
}

variable "eip_name" {
  description = "Name of the eip attached to NAT gateway"
  default     = ""
}

variable "depends" {
  description = "adding this as a workaround to create dependancies between resources"
  default     = ""
}
