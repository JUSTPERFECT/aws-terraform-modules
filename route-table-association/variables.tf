variable "subnet_ids" {
  description = "list of subnets to be associated with route table"
  type        = "list"
  default     = []
}

variable "route_table_ids" {
  description = "route table ID to be associated with subnets"
  type        = "list"
  default     = []
}

variable "association_count" {
  description = "number of subnet association"
  default = 1
}
