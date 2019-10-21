variable "create_nacl" {
  description = "Flag to create NACL or not"
  default     = true
}

variable "vpc_id" {
  description = "ID of VPC where network acl to be deployed"
  default     = ""
}

variable "subnet_ids" {
  description = "list of subnets to be associated with the acl"
  type        = "list"
  default     = []
}

variable "nacl_name" {
  description = "network acl name"
  default     = ""
}

variable "network_acl_rules" {
  description = "rules for created network acl"
  type        = "list"
  default     = []
}
